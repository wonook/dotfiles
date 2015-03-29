#/bin/bash

echo "For the following questions, it would be better to answer yes to all of them to install coq for vim."

read -r -p "Install coq for vim? [Y/n]" response
case $response in
  [Yy]* )
    cd ~/.vim/bundle
    git clone git@github.com:def-lkb/vimbufsync.git
    git clone https://github.com/jvoorhis/coq.vim.git
    git clone https://github.com/trefis/coquille.git
    cat .vimrc_for_coq >> ~/.vimrc
    echo "install complete"
    ;;
  * ) 
    echo "coq is not installed\n"
    ;;
esac

