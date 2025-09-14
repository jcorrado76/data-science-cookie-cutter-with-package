#!/bin/sh
echo "Initializing git repo"
git init
echo "Using currently active Python version: $(python --version)"
poetry env use $(which python)
echo "Installing dev dependencies"
poetry install
echo "Installing prepare-commit-msg hook into .git/hooks"
make install-hooks
echo "Installing git commit message template into .git folder"
cp .git-dev/.gitmessage .git/.gitmessage
echo "Appending config to .git/config"
cat .git-dev/config >> .git/config
echo "Configuring VSCode to run pytest on tests folder"
mv .vscode-dev .vscode
echo "Adding current poetry environment as default Python Interpreter in VSCode"
path_to_poetry_interpreter=$(poetry run which python)
echo "Using $path_to_poetry_interpreter as default Python Interpreter"
awk -v n=$path_to_poetry_interpreter '1;/^{/&&c++==0{print "    \"python.defaultInterpreterPath\": \"" n "\", "} ' .vscode/settings.json > temp && mv temp .vscode/settings.json
git add tests {{ cookiecutter.package_name }} && poetry run git commit -m "initial commit on {{ cookiecutter.package_name }}"
git add .circleci && poetry run git commit -m "initial commit on CircleCI Configuration"
git add .git-dev && git commit -m "initial commit on git configuration files"
git add .gitignore && git commit -m "add .gitignore"
git add .sourcery.yaml && git commit -m "add sourcery config"
git add Makefile && git commit -m "add Makefile"
git add README.md && git commit -m "add README"
git add notebooks && git commit -m "add jupyter notebooks folder"
git add pyproject.toml poetry.lock && git commit -m "add initial dev dependencies"
git add scripts && git commit -m "add scripts folder with move git hooks script"
make tests