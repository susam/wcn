# Linting
# -------

chk:
	venv/bin/ruff check --select ALL --ignore D211,D213,INP001,D100,D103,PLR2004
	venv/bin/ruff format
	venv/bin/mypy .

dep:
	python3 -m venv venv/
	venv/bin/pip3 install ruff mypy


# Nifty Targets
# -------------

ls:
	git ls-tree -rl main; echo
	git ls-tree -rl pages; echo


# Crawler Snapshot
# ----------------

crawl:
	rm -rf tmp/
	mkdir tmp/
	touch tmp/crawl.json
	cp ~/src/wander/index.html tmp/w.html
	echo 'const wander = {' > tmp/wander.js
	echo '  consoles: [' >> tmp/wander.js
	sed -nE 's/^\* ([^ ]*).*/\1/p' wcn.md | \
	while read -r url; do \
	  echo "    '$$url'," >> tmp/wander.js; \
	done
	echo '  ],' >> tmp/wander.js
	echo '}' >> tmp/wander.js
	open tmp/w.html

wcn:
	python3 wcn.py
	cp dev/style.css tmp/
	open tmp/index.html


# Susam's Personal Make Targets
# -----------------------------

push:
	git remote remove cb || :
	git remote remove gh || :
	git remote add cb git@codeberg.org:susam/wcn.git
	git remote add gh git@github.com:susam/wcn.git
	git remote add origin $$(git remote get-url cb) || :
	git push cb main
	git push gh main

pages: wcn
	git checkout main || :
	git branch -df pages || :
	git checkout -b pages
	git rm -rf .
	cp tmp/index.html tmp/style.css tmp/wcn.json .
	git add . ':!tmp/'
	git commit -m 'Update WCN page'
	git push -f cb pages
	git push -f gh pages
	ls -l
	git checkout main
	git ls-tree -rl pages

pub: push pages
