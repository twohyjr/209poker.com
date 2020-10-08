#! /bin/bash

cd ./frontend/website
rm -rf ./dist

make build-ci

aws s3 rm s3://209poker.com --recursive
aws s3 cp ./dist/website s3://209poker.com/ --recursive