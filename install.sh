#!/usr/bin/env bash

# Thanks https://github.com/sontek/dotfiles/blob/master/install.sh

function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    if [ -e "${target}" ]; then
        mv $target $target.bak
    fi

    ln -sf ${source} ${target}
}


for i in _*
do
    link_file $i
done

git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
git submodule foreach git submodule init
git submodule foreach git submodule update

if [ -d gitconfig ]
then
    mv ../.gitconfig ../.gitconfig.bak
    cp -f _gitconfig ../.gitconfig
    cat gitconfig/* >> ../.gitconfig
fi