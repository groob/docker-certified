#!/bin/sh

GIT_EMAIL=${GIT_EMAIL:-}
GIT_USER=${GIT_USER:-}

git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_USER"

exec "$@"
