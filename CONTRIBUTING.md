Contributing
============

> How can I contribute to this project?

* Pull requests are always welcome
* Address issues wherever possible
* Prefix commit messages with [#XX] if addressing an existing issue number
* Use the present tense in commit messages
* Shorten commit messages to 50 characters with bulleted details

> In which format should my contributions be submitted?

* Pull requests should be in JSON format
* Resources should be of the format:

```
{
    "title": "Read Learn Objective-C on the Mac",
    "uri": "http://amzn.to/learn-objective-c-mac",
    "publisher": "http://www.apress.com/9781430218159",
    "ibook": "itms-books://itunes.apple.com/us/book/learn-objective-c-on-the-mac/id492011030?mt=11"
}
```
See [example trails](trails/unix.json).


Book Resources (e.g. print and e-books)
---------------------------------------

* Book resources only have to include a "publisher" link if the "uri" is an Amazon link.
* If the book is available in the iBookstore, include the link under "ibooks" and replace the `https` prepended protocol with `itms-books` as in the above example.

Learning Validations
--------------------

* Learning Validations should be of the format:

```
{
    "title": "Define a method."
},
{
    "title": "Invoke a method."
}
```

Unique ID generation
--------------------

* A resource or validation's id will be generated when `rake` is run. Do not
  generate these yourself.

Validating JSON
---------------

* Run the tests, ID generator, and validator with `rake`
* For more detailed debugging, use [JSONlint.com](http://jsonlint.com).
* Considering using [this regex](https://gist.github.com/4068038) for converting Markdown to JSON

Merging Pull Requests (for admins)
----------------------------------

    git remote add username git://github.com/username/trail-map.git
    git fetch username
    git cherry-pick aabbcceeddffgg...(this is the SHA)

Then, edit the commit as necessary and then edit the commit message:

    git add -A
    git commit --amend -v

Reasoning [detailed by Linus](https://github.com/torvalds/linux/pull/17).
