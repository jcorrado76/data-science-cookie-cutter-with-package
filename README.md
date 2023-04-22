# Data Science Cookie Cutter Template

The purpose of this repository is to provide a sample directory structure that enables data scientists to work in notebooks, and refactor out a python package, install that python package in editable mode, and run that python package locally. 

This repo consists of a cookie cutter template that can be used to quickly spin up directory structures that are convenient for executing data science projects, particularly those where you'll want to refactor a package of shared functionality out of your notebooks.

This template provides you with:

* a data folder
* a notebooks folder
* a subdirectory with a convenient structure for creating a package, writing tests for that package, and then installing that package in local development mode
* an example `setup.py` file showing you some sensible defaults
* a `.pre-commit-config.yaml` file
* a Makefile with some quality of life commands to make certain obscure tasks easier

# Usage
This is a cookie cutter template. So the steps to using this repo are to:

1. clone this repo
2. edit the `cookiecutter.json` file to reflect your project's details
3. run `cookiecutter <path-to-this-repo>` from wherever you'd like to create your new project folder

When you run this process, you're going to wind up with a directory having the name you specified as `project_name`, and it will start its contents from that in the `{{ cookiecutter.project_name }}` directory.

The idea is that we have tests in the root of the project, so it's easy for developers to run testing wit their tools from the root repo.
Then, we store the package that we're working on inside a universal `src` directory. 

This facilitates:
    a) not including tests in your deployed package
    b) installing your package locally in editable mode, so you can use it easier


The `.pre-commit-config` starts with only the `isort` step uncommented, since it's relatively non-controversial, and doesn't make large edits to your code (it just sorts your imports). 

The inspiration for the directory structure comes from the [Prefect repo](https://github.com/PrefectHQ/prefect).