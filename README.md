# Data Science Cookie Cutter Template

This repository is a Cookie Cutter template for spinning up a data science project in which you'd also like to quickly develop and refactor Python code into a separate package.

This template uses poetry to install dependencies, and will install the package that's being created in editable mode into the current virtual environment.

This template:

* creates a `data` folder
* creates a `notebooks` folder
* creates a Python package folder with name you passed on the command line
* creates `scripts` folder for global scripts to be run
* creates a `tests` folder to test your package
* creates a `pyproject.toml` file with common dev dependencies, default tool configurations and Python package configurations
* creates a `.git-dev` folder:
  * `hooks/prepare-commit-msg` - a git hook that appends your ticket number (pulled from your active branch name) and inserts it at the end of your commit message
  * `.gitmessage` - a default template for your commit messages
  * `config` - additional project-specific configurations for git that get appended to your `.git/config` file
    * configure `git` to use VSCode as the commit message editor
    * configure `git` to use the `gitmessage` template inside `.git/.gitmessage` as the default commit message template
* creates a `.vscode-dev` folder:
  * it gets renamed to `.vscode` during installation so it's used by your VSCode IDE
  * it contains `settings.json` with:
    * a configuration to use `pytest` on the `tests` directory in the root of the repo
    * your current active poetry Python interpreter gets injected into the `settings.json` file at installation time
    * `mypy` validation is enabled by default
* creates a `.gitignore` file with a lot of default ignorable file patterns
* creates a `Makefile` with some helper PHONY targets

## Usage

This is a cookie cutter template. So the steps to using this repo are to:

1. clone this repo
2. edit the `cookiecutter.json` file to reflect your project's details
3. run `cookiecutter <path-to-this-repo>` from wherever you'd like to create your new project folder

You can also run `cookiecutter` directly from GitHub with this template by running one of:

```bash
cookiecutter https://github.com/jcorrado76/data-science-cookie-cutter-with-package.git
cookiecutter git+ssh://git@github.com:jcorrado76/data-science-cookie-cutter-with-package.git
cookiecutter gh:jcorrado76/data-science-cookie-cutter-with-package
```

Read more about using cookiecutter from [here](https://cookiecutter.readthedocs.io/en/2.0.2/usage.html#works-directly-with-git-and-hg-mercurial-repos-too).

You can find the command line options [here](https://cookiecutter.readthedocs.io/en/2.0.2/advanced/cli_options.html).

After running these commands, you should have your project folder, by the name of `{{ cookiecutter.project_name }}`.

Inside that project folder, you'll have the above named resources, plus a folder with the value of `{{ cookiecutter.package_name }}` that you supplied.

The idea is that we have tests in the root of the project, so it's easy for developers to run testing from the root of the repo.

This facilitates:

1. not including tests in your deployed package
2. installing your python package locally in editable mode, so you can use it easier
