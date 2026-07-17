#!/bin/bash

# Permutação básica 
# Uso: bash perm-basic.sh target.com

for i in $(cat /root/wordlists/nodes/common.txt); do echo $i.$1; done;
