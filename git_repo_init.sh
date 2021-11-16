#/bin/bash

# gh repo create "$1" #First create repo

git init #init git repo in cwd

git add ./* # add everything in the repo

git commit -m "first commit"

git remote add origin git@github.com:WoutDavid/"$1".git

git push -u origin master
