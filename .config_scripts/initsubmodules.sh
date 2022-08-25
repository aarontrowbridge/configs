#!/bin/sh


# change dir to home to add first layer of submodules

set -e

cd $HOME

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

REPO=aarontrowbridge/ohmyzsh KEEP_ZSHRC=yes sh install.sh

rm install.zsh

# change dir to .oh-my-zsh

cd - 

cd ~/.oh-my-zsh

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    while read path_key local_path
    do
        url_key=$(echo $path_key | sed 's/\.path/.url/')
        url=$(git config -f .gitmodules --get "$url_key")
	rm -rf $local_path
        git submodule add -f $url $local_path
    done

cd -

