#!/bin/bash

set -e
uv venv --python 3.13 .venv
uv pip install --python .venv/bin/python "pandas==3.0.6" matplotlib notebook ipykernel "$@"
