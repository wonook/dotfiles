#/bin/bash

read -r -p "Replace current vim settings and plugins? [Y/n]" response
case $response in
  [Yy]* )
    echo "git submodule init"
    git submodule init
    echo "git submodule update"
    git submodule update
    rm -rf ~/.vimrc
    rm -rf ~/.vim/
    cp -R .vim ~/
    echo "replaced .vim/"
    cp -R .vimrc ~/
    echo "replaced .vimrc"
    ;;
  * ) 
    echo "vim settings are not copied\n"
    ;;
esac

