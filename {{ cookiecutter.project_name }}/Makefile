CONDA_ENVIRONMENT_CFG_FILENAME=conda_environment.yaml
jupyter_kernel:
	@echo "Installing Jupyter kernel..."
	@python -m ipykernel install --user --name {{ cookiecutter.package_name }} --display-name "{{ cookiecutter.package_name }}"

export_conda_environment_config:
	conda env export -f ${CONDA_ENVIRONMENT_CFG_FILENAME}

create_conda_environment_from_config:
	conda env create -f ${CONDA_ENVIRONMENT_CFG_FILENAME}

setup-pre-commit:
	poetry run pre-commit install

install-hooks:
	@echo "Copying git hooks from .git-dev/hooks to .git/hooks..."
	@bash scripts/copy_git_hooks.sh .git-dev/hooks .git/hooks

dev_env:
	@echo "Generating poetry virtual environment"
	poetry install --no-root

up:
	docker compose up -d

down:
	docker compose down

tests:
	poetry run pytest

.PHONY: export_conda_environment_config create_conda_environment_from_config jupyter_kernel dev_env install-hooks up down tests
