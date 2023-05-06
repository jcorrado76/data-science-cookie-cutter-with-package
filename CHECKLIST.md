This is a draft of my "new project/repo" checklist. 
These are the tasks I do or set up on every new project or repo:
1. decide what version of Python I'm using
2. create a conda virtual environment dedicated for that version of Python: `conda create -n python[version] python==[version]`
3. turn my local project into a poetry project: `poetry init`
4. activate the new conda environment and tell poetry to use its version of Python: `conda activate python[version] && poetry env use $(which python)`
5. add typical dev dependencies: [from my data science cookie cutter repo](https://github.com/jcorrado76/data-science-cookie-cutter-with-package/blob/main/%7B%7B%20cookiecutter.project_name%20%7D%7D/pyproject.toml)
  * you can either `poetry add -G dev ...` these, or copy the whole `dev.dependencies` section into the local `pyproject.toml`, run `poetry lock`, then `poetry install`
6. make sure the new poetry environment is activated by default in whatever IDE you're using
7. if I am not creating a package in the new repo, delete the `packages = ...` section from `pyproject.toml`
8. create a `README.md` in the root of the repository
9. create `.pre-commit-config.yaml` file in the root of the repository: [from my data science cookie cutter repo](https://github.com/jcorrado76/data-science-cookie-cutter-with-package/blob/main/%7B%7B%20cookiecutter.project_name%20%7D%7D/.pre-commit-config.yaml)
10. initialize pre-commit: `pre-commit install --hook-type pre-commit --hook-type pre-push`
