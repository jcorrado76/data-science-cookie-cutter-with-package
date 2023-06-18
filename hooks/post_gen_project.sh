#!/bin/sh
git init
# use the currently active Python
poetry env use $(which python)
poetry install
poetry run pre-commit install
make install-hooks