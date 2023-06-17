# Data Science Cookie Cutter Template

This repository is a Cookie Cutter template for spinning up a data science project in which you'd also like to quickly develop and refactor Python code into a separate package. 

This template uses poetry to install dependencies, and will install the package that's being created in editable mode into the current virtual environment.


This template provides you with:

* a data folder
* a notebooks folder
* a Python package folder
* a `scripts` folder for global scripts to be run
* a `tests` folder to test your package
* a `pyproject.toml` file with my repeated dev dependencies, default tool configurations and project configurations
* a `.git-dev` folder containing hooks to help format commit messages quickly
* a `.pre-commit-config.yaml` file
* a `.sourcery.yaml` file to configure sourcery to refactor your code; it comes with the Google Style Guide rules applied
* a `.gitignore` file with a lot of default ignorable file patterns
* a Makefile with some helper PHONY targets

## Usage
This is a cookie cutter template. So the steps to using this repo are to:

1. clone this repo
2. edit the `cookiecutter.json` file to reflect your project's details
3. run `cookiecutter <path-to-this-repo>` from wherever you'd like to create your new project folder

After running these commands, you should have your project folder, by the name of `{{ cookiecutter.project_name}}`.

Inside that project folder, you'll have the above named resources, plus a folder with the value of `{{cookiecutter.package_name}}` that you supplied.

The idea is that we have tests in the root of the project, so it's easy for developers to run testing from the root of the repo.

This facilitates:

1. not including tests in your deployed package
2. installing your python package locally in editable mode, so you can use it easier

The `.pre-commit-config` starts with only the `isort` step uncommented, since it's relatively non-controversial, and doesn't make large edits to your code (it just sorts your imports).

The inspiration for the directory structure comes from the [Prefect repo](https://github.com/PrefectHQ/prefect).