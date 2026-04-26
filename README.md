Wander Console Network
======================

This project captures a snapshot of the Wander Console network by
crawling the network from a set of [known][wcn.md] consoles.

[wcn.md]: wcn.md
[wc]: https://codeberg.org/susam/wander#readme


Contents
--------

* [What Is Wander Console?](#what-is-wander-console)
* [This Project](#this-project)
* [Data Source](#data-source)
* [Add Your Console Link](#add-your-console-link)
* [Licence](#licence)


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

This project crawls the network of Wander consoles and publishes the
crawl data at the following locations:

* HTML: https://susam.codeberg.page/wcn/
* JSON: https://susam.codeberg.page/wcn/wcn.json

The same data is mirrored at:

* HTML: https://susam.github.io/wcn/
* JSON: https://susam.github.io/wcn/wcn.json

The crawl begins from a set of [known][wcn.md] consoles.  The crawler
performs a breadth first search (BFS) to discover consoles linked from
these known consoles, followed by consoles linked from the newly
discovered consoles and so on recursively until no more consoles can
be found.


Data Source
-----------

The list of known consoles is maintained in the following file:

**[wcn.md][]**

This file is maintained both manually as well as automatically.
Whenever the maintainer becomes aware of a new Wander console
instance, it is added to this file manually.  Further, whenever the
crawler discovers new consoles that are not already listed in this
file, they are added to it automatically.


Add Your Console Link
---------------------

If your Wander Console link is missing from [wcn.md][], please do one
or both of the following:

 1. Share your Wander Console link in the following community thread:
    <https://codeberg.org/susam/wander/issues/1>.

 2. Send a pull request to this project to add your console link to
    [wcn.md][].  If you do so, add your link to the bottom of the list
    and keep the commit message concise, for example:

    ```
    Add https://foo.example/wander/
    ```

The project maintainer will then review your submission and add your
console link to [wcn.md][].  The next time the crawler runs, your
console link will automatically appear on the published console data
page at <https://susam.codeberg.page/wcn/>.


Licence
-------

This is free and open source software.  You can use, copy, modify,
merge, publish, distribute, sublicence and/or sell copies of it, under
the terms of the MIT Licence.  See [LICENCE.md][L] for details.

This software is provided "AS IS", WITHOUT WARRANTY OF ANY KIND,
express or implied.  See [LICENCE.md][L] for details.

[L]: LICENCE.md
