Package Template
----------------

This is a cookiecutter template for new packages in the Bouman-Buzzard group.

Set up
------

1. Save the package_template in some location.  E.g.,

    ``~/Documents/Templates/package_template``

    The parent path, `~/Documents/Templates` will be called 'path' below.
1. In a terminal, activate a conda environment (base is ok).
1. Install cookiecutter if you haven't already:

    ``pip install cookiecutter``


Creating a new package
----------------------

1. Change to the parent directory of the new package.  E.g.,

    ``~/Documents/Projects/``

1. Using the conda environment that has cookiecutter, create the new package:

    ``cookiecutter path/package_template/``

1. Answer the questions about the package.

    The package should then be created in a subdirectory of `Projects`.
    The name of the subdirectory is the package name you supplied as one of your answers.

1. Upload your new repo to github using the same name. See the `documentation`_ for instructions if needed.

.. _documentation: https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github#initializing-a-git-repository
