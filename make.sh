#/bin/bash

echo "For the following questions, it would be better to answer yes to all of them to apply my settings."

read -r -p "Replace the current bash settings? [Y/n]" response
case $response in
  [Yy]* )
    cp .bash_profile ~/
    echo "copied .bash_profile"
    cp .bashrc ~/
    echo "copied .bashrc"
    cp .git-completion.bash ~/
    echo "copied .git-completion.bash"
    ;;
  * ) 
    echo "bash settings are not copied\n"
    ;;
esac

read -r -p "Install rbenv? [Y/n]" response
case $response in
  [Yy]* )
    rm -rf ~/.rbenv
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    echo "installed into .rbenv"
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

    git clone git://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis
    git clone git://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use

    ;;
  * ) 
    echo "rbenv is not installed\n"
    ;;
esac

read -r -p "Replace current irb settings? [Y/n]" response
case $response in
  [Yy]* )
    cp .irbrc ~/
    echo "copied .irbrc"
    cp .gemrc ~/
    echo "copied .gemrc"
    ;;
  * ) 
    echo "irb settings are not copied\n"
    ;;
esac

read -r -p "Replace current vim settings and plugins? [Y/n]" response
case $response in
  [Yy]* )
    git submodule init
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

