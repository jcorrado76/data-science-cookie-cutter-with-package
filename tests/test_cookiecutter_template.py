def test_bake_project(cookies):
    result = cookies.bake(
        extra_context={
            "project_name": "example_project",
            "package_name": "example_package",
            "description": "Example package",
            "full_name": "John Doe",
            "email": "john.doe@example.com",
        }
    )

    assert result.exit_code == 0
    # assert result.exception is None
    # assert result.project_path.name == "example_project"
    # assert result.project_path.is_dir()
    # assert result.project_path.joinpath("README.md").exists()
    # assert result.project_path.joinpath("pyproject.toml").exists()
    # assert result.project_path.joinpath("tests").exists()
    # assert (
    #     result.project_path.joinpath("tests")
    #     .joinpath("test_example_package.py")
    #     .exists()
    # )
