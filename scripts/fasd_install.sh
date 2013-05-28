# Create the $HOME/lib folder {{{

cd /tmp

# }}}
# Get the sources and unzip {{{

wget https://github.com/clvv/fasd/zipball/1.0.1
unzip 1.0.1

# }}}
# install {{{

cd clvv-fasd-4822024
sudo make install

# }}}

# Cleanup {{{

cd /tmp && rm -rf 1.0.1 clvv-fasd-4822023
# }}}

