#!/bin/bash

git log --pretty='format:%s' ^$1 $2^@ > release-notes.md