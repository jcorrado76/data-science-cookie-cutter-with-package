#!/bin/sh
echo "Initializing git repo"
git init
echo "Using currently active Python version"
poetry env use $(which python)
echo "Installing dev dependencies"
poetry install
echo "Initializing pre-commit"
poetry run pre-commit install install-hooks
eccho "Installing prepare-commit-msg hook into .git/hooks"
make install-hooks