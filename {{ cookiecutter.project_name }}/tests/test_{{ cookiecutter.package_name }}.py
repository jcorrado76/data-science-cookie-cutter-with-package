from {{ cookiecutter.package_name }} import hello_world


def test_can_import_{{ cookiecutter.package_name }}():
    assert hello_world == "Hello world!"