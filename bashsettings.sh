#/bin/bash

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

read -r -p "Is your current OS Mac OSX? [Y/n]" response
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
