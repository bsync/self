#!/bin/bash

# returns 1 if the package was already installed and 0 otherwise. The first
# argument is the package name to be checked (and installed if not already).
# other arguments are passed to apt-get
try_install() {
    [ "x$FORCEINSTALL" == "x" ] &&  dpkg -l "$1" | grep -q ^ii && return 1
    apt-get -y install "$@"
    return 0
}

for package in curl docker.io; do
   try_install $package 
done

if try_install neovim; then
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim \
        --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if try_install python3-setuptools python3-pip; then
   pip3 install ipython
fi
