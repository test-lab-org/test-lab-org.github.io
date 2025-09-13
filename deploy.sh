#!/bin/bash

# new spanlab-london lab website repository url
GIT_URL="git@github.com:spanlab-london/spanlab-london.github.io.git"

# commit message with date
COMMIT_MESSAGE=${1:-"site build and deploy at $(date)"}

# exit immediately if non-zero status
set -e

echo "Building site..."
bundle exec jekyll build

echo "Deploying to gh-pages..."

# enter build directory
cd _site

# clean state, remove any previous git repository
rm -rf .git

# initialize a new git repository for deployment
git init
git checkout -b gh-pages

# tell github to serve files as they are, no jekyll needed
touch .nojekyll

# add files and commit them
git add .
git commit -m "$COMMIT_MESSAGE"

# add the remote
git remote add origin "$GIT_URL"

# and push the built site to the `gh-pages` branch
git push -f origin gh-pages

# return to the project root 
cd ..

echo "Site built and deployed!"
