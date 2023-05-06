CONDA_ENVIRONMENT_CFG_FILENAME=conda_environment.yaml
jupyter_kernel:
	@echo "Installing Jupyter kernel..."
	@python -m ipykernel install --user --name {{ cookiecutter.project_name }} --display-name "{{ cookiecutter.project_name }}"

export_conda_environment_config:
	conda env export -f ${CONDA_ENVIRONMENT_CFG_FILENAME}

create_conda_environment_from_config:
	conda env create -f ${CONDA_ENVIRONMENT_CFG_FILENAME}

setup_pre_commit:
	pre-commit install

.PHONY: export_conda_environment_config create_conda_environment_from_config jupyter_kernel