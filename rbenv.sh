#/bin/bash

echo "For the following questions, it would be better to answer yes to all of them to apply my settings."

read -r -p "Install rbenv? [Y/n]" response
case $response in
  [Yy]* )
    rm -rf ~/.rbenv
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    echo "installed into .rbenv"
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo "installed ruby-build"
    git clone git://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis
    echo "installed rbenv-whatis"
    git clone git://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use
    echo "installed rbenv-use"
    git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
    echo "installed rbenv-gem-rehash"
    git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems
    echo "installed rbenv-default-gems"
    cat texts/rbenv_default_gems >> "$RBENV_ROOT/default-gems"
    git clone git://github.com/jf/rbenv-gemset.git ~/.rbenv/plugins/rbenv-gemset
    echo "installed rbenv-gemset"
    git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
    echo "installed rbenv-update"
    cat texts/bashrc.rbenv >> ~/.bashrc
    echo "copied rbenv bash settings into bashrc"
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

