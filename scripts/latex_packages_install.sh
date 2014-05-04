DIR=$HOME/ownCloud

sudo cp -r $DIR/dotfiles/latex_package_install/german /usr/share/texmf/tex/latex
sudo cp -r $DIR/dotfiles/latex_package_install/picins /usr/share/texmf/tex/latex
sudo cp -r $DIR/dotfiles/latex_package_install/stmaryrd /usr/share/texmf/tex/latex
sudo cp -r $DIR/dotfiles/latex_package_install/yfonts /usr/share/texmf/tex/latex

sudo texhash

