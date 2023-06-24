build:
	env PIP_CONFIG_FILE=/dev/null python3 -m build --sdist --wheel .

clean:
	rm -rf build dist

testpypi-upload:
	python3 -m twine upload --repository testpypi dist/*

pypi-upload:
	python3 -m twine upload dist/*
