# This file only exists because the pip / build / twine system
# ignores the description, long_description and long_description_content_type
# items in pyproject.tonl.

from setuptools import setup
with open('README.rst') as readme:
    readme_contents = readme.read()
    
setup(
    description='A simple HTTP server for static local content.',
    long_description=readme_contents,
    long_description_content_type='text/x-rst'
)

