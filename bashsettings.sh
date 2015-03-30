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
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    ;;
  * ) 
    echo "bash settings are not copied\n"
    ;;
esac
