#!/usr/bin/env bash

git submodule update --init --recursive --remote
git submodule foreach git checkout master
git submodule foreach git pull origin master
