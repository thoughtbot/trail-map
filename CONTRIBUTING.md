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
* Run the json validator script (`ruby lib/json_validator.rb`)
* For more detailed output, use [JSONlint.com](http://jsonlint.com).
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
