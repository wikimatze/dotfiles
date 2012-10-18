# Remove packages {{{

sudo apt-get remove -y abiword
sudo apt-get remove -y catfish
sudo apt-get remove -y gigolo
sudo apt-get remove -y gnumeric
sudo apt-get remove -y gnumusicbrowser
sudo apt-get remove -y gucharmap
sudo apt-get remove -y leafpad
sudo apt-get remove -y libruby1.8
sudo apt-get remove -y orage
sudo apt-get remove -y parole
sudo apt-get remove -y ristretto
sudo apt-get remove -y ruby1.8-dev
sudo apt-get remove -y simplescan
sudo apt-get remove -y transmission-common
sudo apt-get remove -y xfce4-notes

# Remove games {{{

sudo apt-get remove -y aisleriot
sudo apt-get remove -y gigolo
sudo apt-get remove -y gnome-games-common checkbox evolution tomboy empathy libsane
sudo apt-get remove -y gnome-sudoku
sudo apt-get remove -y gnomine
sudo apt-get remove -y mahjongg

# }}}

# }}}
# Install packages for gvim {{{

sudo apt-get remove -y libatk1.0-dev
sudo apt-get remove -y libbonoboui2-dev
sudo apt-get remove -y libcairo2-dev
sudo apt-get remove -y libgnome2-dev
sudo apt-get remove -y libgtk2.0-dev
sudo apt-get remove -y libncurses-dev
sudo apt-get remove -y libx11-dev
sudo apt-get remove -y libxpm-dev
sudo apt-get remove -y libxt-dev

# }}}
# Install of packages {{{

sudo apt-get install -y ack-grep
sudo apt-get install -y adobe-flashplugin
sudo apt-get install -y aircrack-ng
sudo apt-get install -y banshee
sudo apt-get install -y calibre
sudo apt-get install -y cifs-utils # SMB cross-platform file sharing
sudo apt-get install -y clojure
sudo apt-get install -y clementine
sudo apt-get install -y cuetools
sudo apt-get install -y curl
sudo apt-get install -y curlftpfs
sudo apt-get install -y cvs
sudo apt-get install -y deluge # python based torrent client
sudo apt-get install -y exfalso
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y exuberant-tags
sudo apt-get install -y ffmpeg
sudo apt-get install -y fig2ps
sudo apt-get install -y fig2sty
sudo apt-get install -y flac
sudo apt-get install -y flashplugin-installer
sudo apt-get install -y ftp
sudo apt-get install -y gedit
sudo apt-get install -y gftp
sudo apt-get install -y gimp
sudo apt-get install -y git-core
sudo apt-get install -y git-doc
sudo apt-get install -y gitg
sudo apt-get install -y gitk
sudo apt-get install -y graphicsmagick-libmagick-dev-compat
sudo apt-get install -y gsmartcontrol
sudo apt-get install -y gstreamer0.10-lame
sudo apt-get install -y gstreamer0.10-plugins-bad
sudo apt-get install -y gstreamer0.10-plugins-good
sudo apt-get install -y gstreamer0.10-plugins-ugly
sudo apt-get install -y gthumb
sudo apt-get install -y guvcview
sudo apt-get install -y hpijs
sudo apt-get install -y htop
sudo apt-get install -y imagemagick
sudo apt-get install -y inkscape
sudo apt-get install -y intltool
sudo apt-get install -y irssi
sudo apt-get install -y jfstils
sudo apt-get install -y lame
sudo apt-get install -y libatk1.0-dev
sudo apt-get install -y libbonoboui2-dev
sudo apt-get install -y libcairo2-dev
sudo apt-get install -y libgnome2-dev
sudo apt-get install -y libgraph-writer-graphviz-perl
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y libncurses-dev
sudo apt-get install -y libpq-dev
sudo apt-get install -y libreadline5-dev
sudo apt-get install -y libreoffice-gtk
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libx11-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y libxpm-dev
sudo apt-get install -y libxslt-dev
sudo apt-get install -y libxt-dev
sudo apt-get install -y lynx
sudo apt-get install -y mailutils
sudo apt-get install -y make
sudo apt-get install -y mencoder
sudo apt-get install -y mercurial # enables hb command
sudo apt-get install -y mozilla-plugin-gnash
sudo apt-get install -y nfs-kernel-server
sudo apt-get install -y openjdk-7-jre
sudo apt-get install -y p7zip-full
sudo apt-get install -y pandoc
sudo apt-get install -y pdfchain
sudo apt-get install -y pdftk
sudo apt-get install -y php-codesniffer
sudo apt-get install -y phpunit
sudo apt-get install -y pngcrush
sudo apt-get install -y postgresql
sudo apt-get install -y powertop
sudo apt-get install -y powertop
sudo apt-get install -y preload
sudo apt-get install -y pv
sudo apt-get install -y python-gtkspell
sudo apt-get install -y python-software-properties
sudo apt-get install -y rake
sudo apt-get install -y rar
sudo apt-get install -y rhythmbox
sudo apt-get install -y roxterm
sudo apt-get install -y scala
sudo apt-get install -y scrot
sudo apt-get install -y shntool
sudo apt-get install -y skype
sudo apt-get install -y smartmontools
sudo apt-get install -y soundconverter
sudo apt-get install -y sox
sudo apt-get install -y synapse
sudo apt-get install -y sqlite3
sudo apt-get install -y sqlmap
sudo apt-get install -y subversion
sudo apt-get install -y tetex-base
sudo apt-get install -y tetex-bin
sudo apt-get install -y tetex-extra
sudo apt-get install -y tex-common
sudo apt-get install -y tex4ht
sudo apt-get install -y texlive
sudo apt-get install -y texlive-base
sudo apt-get install -y tig
sudo apt-get install -y tmux
sudo apt-get install -y tree
sudo apt-get install -y ubuntu-restricted-extra
sudo apt-get install -y vim
sudo apt-get install -y vim-gnome
sudo apt-get install -y vinagre # rdp for gnome
sudo apt-get install -y virtualbox-ose
sudo apt-get install -y vlc
sudo apt-get install -y wkhtmltopdf
sudo apt-get install -y wmctrl
sudo apt-get install -y xclip
sudo apt-get install -y xfig
sudo apt-get install -y xournal
sudo apt-get install -y xpdf
sudo apt-get install -y zlibmagickwand-dev
sudo apt-get install -y zsh
sudo apt-get install -y zsnes

# add thumbnail-generator for music
sudo add-apt-repository ppa:flozz/flozz -y
sudo apt-get update && sudo apt-get install cover-thumbnailer -y

# }}}
# Update and upgrade {{{

sudo apt-get update -y
sudo apt-get upgrade -y

# }}}
# Unimportant stuff {{{

#sudo apt-get install -y virtualbox-guest-additions
#sudo apt-get install -y vorbis-tools
#sudo apt-get install -y sun-java6-jdk  # not available in > 11.10
#sudo apt-get install -y sun-java6-jre
#sudo apt-get install -y phpmyadmin
#sudo apt-get install -y mysql-server

# Puppet stuff {{{

#sudo apt-get install -y puppet
#sudo apt-get install -y puppetmaster
#sudo apt-get install -y facter

# }}}
# }}}
