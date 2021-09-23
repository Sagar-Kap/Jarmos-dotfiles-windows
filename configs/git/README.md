# Git Version Control

[Git][Git] is a version-control system for software development. Chances are you're already aware of it if you can navigate around [GitHub][GitHub] & hence won't need an introduction to Git itself.

But, for those uninitiated, you can configure the `git` command-line tool according to your preferences. For example, you can configure the colour settings of the `git status` output. Or you could even use aliases like `<account-name>:<repository-name>` for URLs.

So, combined with "git aliases" & the above mentioned URL aliases, you could invoke `git cl jarmos:dotfiles-windows` to clone this repository. No more do you've to type out the whole command like this `git clone git@github.com:Jarmos-san/dotfiles-windows`.

That said, you can configure all of the above & much more through the `.gitconfig` plain-text file. This file is placed under in `%USERPROFILE%` for Windows system. Place it anywhere else & `git` doesn't appear to recognise it.

## About the Config Files

Additionally, you might notice, there're a few more files other than the `.gitconfig` file. They're all plain-text files as well & each servce a specific purpose. More details on their use is provided as follows:

- `.gitconfig`: The "main" file which configures Git according to the user's preferences. More info is available at: [gitconfig][Gitconfig].
- `.gitattributes_global`: Is used to specify particular attributes of files in the pathname. It's recommended to add repository-specific `.gitattribute` file for better collaboration. More information is available at: [`gitattributes`][Gitattributes].
- `.gitignore_global`: A global `.gitignore` so that Git doesn't commit unecessary files to VCS by accident. More info is available at: [`gitignore`][Gitignore].

All these files needs to be at `%USERPROFILE%`, else they don't appear to work. Besides the `.gitconfig` file, the `.gitattributes_global` & `.gitignore_global` files are used to specific global file attributes & file-ignore patterns for `git`.

## Explaining My `.gitconfig` File Line-By-Line

TODO: Will be updated soon enough. Come back when I've detailed this section.

<!-- Reference links -->
[Git]: https://git-scm.com/
[GitHub]: https://github.com
[Gitattributes]: https://git-scm.com/docs/gitattributes
[Gitignore]: https://git-scm.com/docs/gitignore
[Gitconfig]: https://git-scm.com/docs/git-config
