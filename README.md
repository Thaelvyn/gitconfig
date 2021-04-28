# Gitconfig

A simple bash script to set happy git defaults.

## What it does

* prompts you for your username and email and sets them
* sets the default editor to nano
* adds a git template as a reminder of the ideal format when doing a `git commit`
* adds globally excluded files (Only operating system ones are excluded, as they are often missing from repo specific .gitignore)
* sets git command autocorrect, with 1 second delay to change one's mind
* sets compatibility with windows machines (CLRF)

## How to run

```
./gitconfig.sh
```

## License
GNU General Public License v3.0

## Thanks to
The git team and the [Git Configuration page](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)

