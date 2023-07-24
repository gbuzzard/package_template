.. docs-include-ref

{{cookiecutter.project_name}}
========

..
    Change the number of = to match the number of characters in the project name.

{{cookiecutter.project_description}}

..
    Include more detailed description here.

Installing
----------
1. *Clone or download the repository:*

    .. code-block::

        git clone git@github.com:cabouman/{{cookiecutter.project_name}}

2. Install the conda environment and package

    a. Option 1: Clean install from dev_scripts

        *******You can skip all other steps if you do a clean install.******

        To do a clean install, use the command:

        .. code-block::

            cd dev_scripts
            source clean_install_all.sh

    b. Option 2: Manual install

        1. *Create conda environment:*

            Create a new conda environment named ``{{cookiecutter.project_name}}`` using the following commands:

            .. code-block::

                conda create --name {{cookiecutter.project_name}} python={{cookiecutter.python_version}}
                conda activate {{cookiecutter.project_name}}
                pip install -r requirements.txt

            Anytime you want to use this package, this ``{{cookiecutter.project_name}}`` environment should be activated with the following:

            .. code-block::

                conda activate {{cookiecutter.project_name}}


        2. *Install {{cookiecutter.project_name}} package:*

            Navigate to the main directory ``{{cookiecutter.project_name}}/`` and run the following:

            .. code-block::

                pip install .

            To allow editing of the package source while using the package, use

            .. code-block::

                pip install -e .


Running Demo(s)
---------------

Run any of the available demo scripts with something like the following:

    .. code-block::

        python demo/<demo_file>.py

