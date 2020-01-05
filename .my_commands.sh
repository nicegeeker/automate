#!/bin/bash

function create() {
    python -m create.py $1
    cd /Users/sat/Documents/Projects/
    mkdir $1
    cd $1
    git init
    git remote add origin git@github.com:nicegeeker/$1.git
    touch README.md
    echo "# $1" >> README.md
    git add .
    git commit -m "Initial commit"
    git push -u orging master
}

function add_repo() {
    python create.py ${PWD##*/}

    if [ ! e ".git"]
    then
        git init
    fi
    git remote remove origin
    git remote add origin git@github.com:nicegeeker/${PWD##*/}.git
}
