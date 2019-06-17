#!/bin/bash

CUR_DIR=$(pwd)

rm -rf ~/.emacs*
cp .emacs ~/
mkdir ~/.emacs.d

mkdir ~/.emacs.d/themes/
cd ~/.emacs.d/themes/
git clone https://github.com/oneKelvinSmith/monokai-emacs

mkdir ~/.emacs.d/modes/
cd ~/.emacs.d/modes/
git clone https://github.com/sabof/org-bullets

cd $CUR_DIR
echo "Done!"

exit 0
