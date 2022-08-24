#!/bin/sh


# change dir to home to add first layer of submodules

cd $HOME

set -e

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    while read path_key local_path
    do
        url_key=$(echo $path_key | sed 's/\.path/.url/')
        url=$(git config -f .gitmodules --get "$url_key")
        git submodule add -f $url $local_path
    done

# change dir to .oh-my-zsh

cd -

cd ~/.oh-my-zsh

set -e

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    while read path_key local_path
    do
        url_key=$(echo $path_key | sed 's/\.path/.url/')
        url=$(git config -f .gitmodules --get "$url_key")
	rm -rf $local_path
        git submodule add -f $url $local_path
    done

cd -


