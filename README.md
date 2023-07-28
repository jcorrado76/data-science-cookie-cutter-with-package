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
* creates a `.vscode-dev` folder:
  * it gets renamed to `.vscode` during installation so it's used by your VSCode IDE
  * it contains `settings.json` with:
    * a configuration to use `pytest` on the `tests` directory in the root of the repo
    * your current active poetry Python interpreter gets injected into the `settings.json` file at installation time
    * `mypy` validation is enabled by default
* creates a `.pre-commit-config.yaml` file:
  * it's configured so that you just run `pre-commit install` and it installs pre-commit and pre-push hooks
* creates a `.sourcery.yaml` file to configure sourcery to refactor your code; it comes with the Google Style Guide rules applied
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

The `.pre-commit-config` starts with only the `isort` step uncommented, since it's relatively non-controversial, and doesn't make large edits to your code (it just sorts your imports).

The inspiration for the directory structure comes from the [Prefect repo](https://github.com/PrefectHQ/prefect).

## FAQ

If you get this error when the pre-commit hooks are installing:

```
ImportError: dlopen(/Users/josephcorrado/anaconda3/lib/python3.10/lib-dynload/_sqlite3.cpython-310-darwin.so, 0x0002): Symbol not found: _sqlite3_enable_load_extension
  Referenced from: <D8F5DD12-3FC5-3F3D-BF16-05B2C1D7FD2B> /Users/josephcorrado/anaconda3/lib/python3.10/lib-dynload/_sqlite3.cpython-310-darwin.so
  Expected in:     <710E4989-2656-3774-8114-0C2936A8FC33> /usr/lib/libsqlite3.dylib
```

It's because the files from an older installation of the poetry virtual environment are cached and being used here, so there's a version mismatch. 
To fix it, just figure out which poetry virtual environment you're trying to install to:

```bash
poetry env list
```

Then remove it:

```bash
poetry env remove <env-name>
```

Then try again.
