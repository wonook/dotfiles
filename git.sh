#/bin/bash

echo "If you are not the author of the file, you probably wouldn't want to run this file. Abort by Ctrl+C."

read -r -p "Replace current git settings? [Y/n]" response
case $response in
  [Yy]* )
    cp .gitconfig ~/
    echo "copied .gitconfig"
    cp .gitignore_global ~/
    echo "copied .gitignore_global"
    ;;
  * ) 
    echo "git settings are not copied\n"
    ;;
esac

