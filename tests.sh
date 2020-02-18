#! /bin/sh

set -ex

cd Practice
PYTHONPATH="." pytest test/TestNerNet.py
