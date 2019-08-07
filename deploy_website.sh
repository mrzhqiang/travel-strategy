#!/bin/bash

set -ex

REPO="git@github.com:mrzhqiang/travel-strategy.git"
DIR=temp-clone

# Delete any existing temporary website clone
rm -rf $DIR

# Clone the current repo into temp folder
git clone $REPO $DIR

# Move working directory into temp folder
cd $DIR

# Generate the website
jekyll build

# checkout gh-pages branch
git checkout gh-pages
git push

# Delete our temp folder
cd ..
rm -rf $DIR