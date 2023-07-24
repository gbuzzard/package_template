============
Installation 
============

The ``{{cookiecutter.project_name}}`` package currently is only available to download and install from source through GitHub.


Downloading and installing from source
-----------------------------------------

1. Download the source code:

  In order to download the python code, move to a directory of your choice and run the following two commands.

    | ``git clone https://github.com/cabouman/{{cookiecutter.project_name}}.git``
    | ``cd {{cookiecutter.project_name}}``


2. Create a Virtual Environment:

  It is recommended that you install to a virtual environment.
  If you have Anaconda installed, you can run the following:

    | ``conda create --name {{cookiecutter.project_name}} python={{cookiecutter.project_name}}``
    | ``conda activate {{cookiecutter.project_name}}``

  Install the dependencies using:

    ``pip install -r requirements.txt``

  Install the package using:

    ``pip install .``

  or to edit the source code while using the package, install using

    ``pip install -e .``

  Now to use the package, this ``{{cookiecutter.project_name}}`` environment needs to be activated.


3. Install:

You can verify the installation by running ``pip show {{cookiecutter.project_name}}``, which should display a brief summary of the packages installed in the ``{{cookiecutter.project_name}}`` environment.
Now you will be able to use the ``{{cookiecutter.project_name}}`` python commands from any directory by running the python command ``import {{cookiecutter.project_name}}``.

