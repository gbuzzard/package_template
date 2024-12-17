Package Template
----------------

This is a cookiecutter template for new packages in the Bouman-Buzzard group.

Setup
-----

1. Download and save this package_template repo in some location.  E.g.,

    ``~/Documents/Templates/package_template``

    The parent path, `~/Documents/Templates` will be called '<path>' below.

1. In a terminal, activate a conda environment (base is ok).

1. Install cookiecutter if you haven't already:

    ``pip install cookiecutter``


Creating a new package
----------------------

1. Change to the directory where you'll put the new package.  E.g., if you're going to make a new package 'xyz' in the directory '~/Documents/Projects/', then run the command

    ``cd ~/Documents/Projects/``

1. Recall that <path> is the directory that contains the 'package_template' repo from the Setup step above.  Using the conda environment that has cookiecutter installed, create the new package by running the following command (the name of the new package will be determined during the execution of cookiecutter):

    ``cookiecutter <path>/package_template/``
 
1. Answer the questions about the package. The package should then be created in a subdirectory of `~/Documents/Projects` or whatever your project directory is. The name of the subdirectory is the package name you supplied as one of your answers.

1. Upload your new package to github using the same name for the repo name on github. See the `documentation`_ for instructions if needed.

.. _documentation: https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github#initializing-a-git-repository
