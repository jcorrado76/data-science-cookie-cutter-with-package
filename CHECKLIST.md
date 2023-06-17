# Checklist

These are the steps I follow every time I set up a new project:

1. decide what version of Python
2. create a conda virtual environment dedicated for that version of Python:

```bash
conda create -n python[version] python==[version]
```

3. If you haven't clone this repo:

```bash
git clone git@github.com:jcorrado76/data-science-cookie-cutter-with-package.git
```

4. Create a project from the cookiecutter template:

```bash
cookiecutter <path-to-cloned-repo>
```

5. Answer the configuration questions from `cookiecutter`
6. `cd` into the new project
7. tell `poetry` to use the version of Python created by our `conda` virtual environment above, and initialize the poetry virtual environment:

```bash
conda activate python[version] && poetry env use $(which python)
```

8. Install all dependencies:

```bash
poetry install
```

10. Configure PyCharm or VSCode to use the virtual environment created by `poetry`
11. Uncomment any configurations in the `pyproject.toml`, or `.pre-commit-config.yaml` that I don't want
16. initialize pre-commit:

```bash
pre-commit install
```

