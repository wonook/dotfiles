#/bin/bash

read -r -p "Replace the current bash settings? [y/N]" response
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

read -r -p "Is your current OS Mac OSX? [y/N]" response
case $response in
  [Yy]* )
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    echo "subl command applied for sublime text"
    cat texts/bash_profile.osx >> ~/.bash_profile
    echo "OS X bash_profile settings copied"
    ;;
  * )
    echo "osx settings are not copied\n"
    ;;
esac

read -r -p "Copy tizen PATH settings for your ubuntu? [y/N]" response
case $response in
  [Yy]* )
    cat texts/bash_profile.linux_tizen >> ~/.bash_profile
    echo "Ubuntu tizen PATH settings copied"
    ;;
  * )
    echo "Ubuntu tizen PATH settings are not copied\n"
    ;;
esac

read -r -p "copy settings for chruby? [y/N]" response
case $response in
  [Yy]* )
    cat texts/bashrc.chruby >> ~/.bashrc
    echo "chruby bashrc settings copied"
    ;;
  * )
    echo "chruby bashrc settings are not copied\n"
    ;;
esac
