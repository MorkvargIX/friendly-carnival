#!/usr/bin/env bash
# exit on error
set -o errexit

pipenv install

python3 manage.py collectstatic --no-input
python3 manage.py migrate