#/bin/bash

read -r -p "Install coq settings for vim? [Y/n]" response
case $response in
  [Yy]* )
    cat texts/vimrc_for_coq >> ~/.vimrc
    cd ~/.vim/bundle
    git clone git@github.com:def-lkb/vimbufsync.git
    git clone https://github.com/jvoorhis/coq.vim.git
    git clone https://github.com/trefis/coquille.git
    echo "install complete"
    ;;
  * ) 
    echo "coq is not installed\n"
    ;;
esac

