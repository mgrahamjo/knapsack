# Knapsack

Knapsack is in development! Don't use it yet.

-----------------------------------

Knapsack is a simple solution for including git repositories inside other git repositories. 

Git's built-in solutions for this (submodules and subtrees) are too difficult to use. Knapsack is designed to work and feel like a package manager. If you've used NPM, Bower, PIP, or similar, you already know how to use Knapsack.

Unlike most package managers, Knapsack doesn't have its own registry. Any git repository can be `knapsack install`ed as long as it's public or you have credentials for it.

## Installation

Currently Knapsack is available for OSX. It has not been tested in other *nix environments.

- First install git if you haven't.
- Run the following command: `curl -o usr/local/bin/knapsack -H "Accept: application/vnd.github.raw" "https://raw.githubusercontent.com/mgrahamjo/knapsack/knapsack; chmod +x /usr/local/bin/knapsack"`

## Usage:

```
knapsack [<install>] [-h] [-b] [-c] [<repository>]
    install: if no repository is specified, installs all repositories listed in .knapsack
    -h|--help: help
    -b|--branch: the branch of the repository you want to install. Defaults to master.
    -c|--commit: the hash id of the commit you would like to checkout. Defaults to latest.
    repository: the full URL of the git repository you would like to install.
```

The first time you use knapsack in a given project, it will create and gitignore a `knapsack/` directory to house your installed packages. It will also create a non-gitignored .knapsack file which will store information about the packages your project requires.

## Examples:

`knapsack install https://github.com/mgrahamjo/mj-slider`

Installs the mj-slider project into your knapsack folder using the master branch and the latest commit. Adds a line to your .knapsack file. The `install` argument is optional and is only included to mimic other package managers.

`knapsack install https://github.com/mgrahamjo/mj-slider -b develop -c aaef59`

Installs the mj-slider project on branch develop at commit aaef59.

`knapsack install`

Installs everything listed in your .knapsack file (except for packages which you already have installed at the proper branch and commit).