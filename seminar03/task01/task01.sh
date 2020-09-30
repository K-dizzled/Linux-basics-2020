#!/bin/bash
size=$RANDOM
head -c $size </dev/urandom > rnd.txt
echo $size
