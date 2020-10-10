#!/usr/bin/env bash

commit_regex='issue-+./[0-9]'
error_msg="Aborting commit. Your commit message is missing either an issue[...]"

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
fi