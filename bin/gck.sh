#!/bin/bash

branches=`git branch -a`
#branches=$(echo $branches | tr ' ' '\n')
branches=$(echo "$branches" | sed -r 's/\*//')

branch=$(echo $branches | tr ' ' '\n' | fzf)
#echo branch is $branch

branch=$(echo $branch | sed -r 's/origin\///')
branch=$(echo $branch | sed -r 's/remotes\///')
#echo branch is $branch


git ck $branch
