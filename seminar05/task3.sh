#!/usr/bin/env bash

# set this to your active development branch
develop_branch="hw5-dev"
current_branch="$(git rev-parse --abbrev-ref HEAD)"

# only check commit messages on main development branch
[ "$current_branch" != "$develop_branch" ] && exit 0

# regex to validate in commit msg
commit_regex='issue[+./[0-9]+]'
error_msg="Aborting commit. Your commit message is missing either an issue[...]"

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
fi