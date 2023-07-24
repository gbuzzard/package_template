from setuptools import setup, find_packages, Extension
import numpy as np
import os

NAME = "{{cookiecutter.project_name}}"
VERSION = "0.1"
DESCR = "{{cookiecutter.project_description}}"
REQUIRES = ['numpy']
LICENSE = "BSD-3-Clause"

AUTHOR = '{{cookiecutter.project_name}} development team'
EMAIL = "buzzard@purdue.edu"
PACKAGE_DIR = "{{cookiecutter.project_name}}"

setup(install_requires=REQUIRES,
      zip_safe=False,
      name=NAME,
      version=VERSION,
      description=DESCR,
      author=AUTHOR,
      author_email=EMAIL,
      license=LICENSE,
      packages=find_packages(include=['{{cookiecutter.project_name}}']),
      )

