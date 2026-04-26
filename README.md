Wander Console Network
======================

This project captures a snapshot of the Wander Console network by
crawling the network from a set of [known][wcn.md] consoles.

[wcn.md]: wcn.md
[wc]: https://codeberg.org/susam/wander#readme


Contents
--------

* [What Is Wander Console](#what-is-wander-console)
* [This Project](#this-project)
* [Data Source](#data-source)
* [Add Your Console Link](#add-your-console-link)


What Is Wander Console?
-----------------------

Wander is a small, decentralised, self-hosted web console that lets
visitors to your website explore interesting websites and pages
recommended by a community of independent personal site owners.

Each Wander console loads personal websites and pages recommended by
the Wander community.  Further, each Wander console can link to other
Wander consoles, forming a lightweight, decentralised network for
browsing the *small web* of personal websites.

To learn more, please visit [codeberg.org/susam/wander][wc].


This Project
------------

The current project crawls the network of Wander console and makes the
crawl data available at the following places:

* https://susam.codeberg.page/wcn/
* https://susam.github.io/wcn/ (Mirror)

The data in the above pages are also available as JSON:

* https://susam.codeberg.page/wcn/wcn.json
* https://susam.github.io/wcn/wcn.json (Mirror)

The crawling begins from a set of [known][wcn.md] consoles.  The
crawler performs a breadth first search (BFS) to find all consoles
link to these known consoles and then other consoles linked to such
consoles and so on recursively, until no more consoles can be found.


Data Source
-----------

The list of known consoles is maintained in the following file:

**[wcn.md][]**

This file is maintained both manually as well as automatically.
Whenever the maintainer becomes aware of a new Wander console
instance, it is added manually to this file.  Further, whenever the
Wander crawler discovers new consoles missing from the list, they are
added to the file automatically.


Add Your Console Link
---------------------

If your Wander Console link is missing from [wcn.md][], please do one
or both of the following:

 1. Share your Wander Console link in the following community thread:
    <https://codeberg.org/susam/wander/issues/1>.

 2. Send a pull request to this project to add your console link to
    [wcn.md][].  While you do so, ensure that you add your link to the
    bottom of the list.  Keep the commit message as small as possible,
    for example:

    ```
    Add https://foo.example/wander/
    ```

The project maintainer will then review your submission and add your
console link to [wcn.md][].  The next time the crawler is run, your
console link would automatically appear on the published console data
page at <https://susam.codeberg.page/wcn/>.


Licence
-------

This is free and open source software.  You can use, copy, modify,
merge, publish, distribute, sublicence and/or sell copies of it, under
the terms of the MIT Licence.  See [LICENCE.md][L] for details.

This software is provided "AS IS", WITHOUT WARRANTY OF ANY KIND,
express or implied.  See [LICENCE.md][L] for details.

[L]: LICENCE.md
