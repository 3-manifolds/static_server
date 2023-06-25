.PHONY: clean dist testpypi-upload pypi-upload

dist:
# Unset PIP_CONFIG_FILE in case pip.conf sets user = True
	env PIP_CONFIG_FILE=/dev/null python3 -m build --sdist --wheel .

clean:
	rm -rf build dist */*.egg-info */__pycache__

testpypi-upload:
	python3 -m twine upload --repository testpypi dist/*

pypi-upload:
	python3 -m twine upload dist/*
