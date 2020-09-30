#! /bin/bash
cat file.property
task05 % sed -i ‘’ ’s_name=_name=andrei/‘ file.property
task05 % sed -i ‘’ ’s_lastname=andrei_lastname=kozyrev/‘ file.property
task05 % cat file.property