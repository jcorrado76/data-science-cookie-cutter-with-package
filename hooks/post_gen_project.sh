#!/bin/sh
git init && poetry env use $(which python) && \
    poetry install && \
    make setup-pre-commit && \
    make install-hooks