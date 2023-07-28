#!/bin/sh
echo "Initializing git repo"
git init
echo "Using currently active Python version: $(python --version)"
poetry env use $(which python)
echo "Installing dev dependencies"
poetry install
echo "Initializing pre-commit"
poetry run pre-commit install --install-hooks
echo "Installing prepare-commit-msg hook into .git/hooks"
make install-hooks
echo "Installing git commit message template into .git folder"
mv .git-dev/.gitmessage .git/.gitmessage
echo "Configuring VSCode to run pytest on tests folder"
mv .vscode-dev .vscode