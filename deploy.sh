#!/bin/bash
rm dist/*
python3 setup.py sdist build
python3 setup.py bdist_wheel
twine upload dist/*
# update local installed package
pip3 install --upgrade  aollio
