Contributing
============

> How can I contribute to this project?

* Pull requests are always welcome
* Address issues wherever possible
* Prefix commit messages with [#XX] if addressing an existing issue number
* Use the present tense in commit messages
* Shorten commit messages to 50 characters with bulleted details

Merging Pull Requests (for admins)
----------------------------------
* git remote add username git://github.com/username/trail-map.git
* git fetch username
* git cherry-pick aabbcceeddffgg...(this is the SHA)

Then, edit the commit as necessary and then edit the commit message:

git add -A
git commit --amend -v

Reasoning [detailed by Linus](https://github.com/torvalds/linux/pull/17)
