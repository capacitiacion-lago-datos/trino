#!/bin/bash

# first, create a custom yml file as in
# https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#create-env-file-manually
# 
# second, run this script:
# bash create_venv.sh

# create venv with mamba (faster than conda)
mamba env create --file environment.yml

# register the venv as a kernel named 'venv-test'
# - this should make the kernel available from JupyterLab launcher
conda run -n venv-test python3 -m ipykernel install --user --name venv-test-kernel

# check venvs
# conda info --envs

# activate venv
# conda activate venv-test