# Remove packages {{{
sudo apt-get remove -y abiword
sudo apt-get remove -y catfish
sudo apt-get remove -y gigolo
sudo apt-get remove -y gmusicbrowser
sudo apt-get remove -y gnome-mines
sudo apt-get remove -y gnumeric
sudo apt-get remove -y gucharmap
sudo apt-get remove -y leafpad
sudo apt-get remove -y mousepad
sudo apt-get remove -y onboard
sudo apt-get remove -y orage
sudo apt-get remove -y pidgin
sudo apt-get remove -y parole
sudo apt-get remove -y ristretto
sudo apt-get remove -y simple-scan
sudo apt-get remove -y transmission-common
sudo apt-get remove -y uget
sudo apt-get remove -y xfburn
sudo apt-get remove -y xfce4-dict
sudo apt-get remove -y xfce4-notes
sudo apt-get remove -y xfce4-taskmanager
sudo apt-get remove -y xmag

# Remove games {{{

sudo apt-get remove -y sgt-puzzles

# }}}

# }}}
# Packages lua {{{

sudo apt-get install -y lua5.1
sudo apt-get install -y liblua5.1-dev # help lua support inside vim
sudo apt-get install -y libtolua-dev  # for vim installation

# }}}
# Install of packages {{{

sudo apt-get install -y browser-plugin-freshplayer-pepperflash # need for flash chromium + firefox
sudo apt-get install -y audacity
sudo apt-get install -y acpi # need for battery status i3 (conky)
sudo apt-get install -y arandr # connect monitors for i3
sudo apt-get install -y build-essential
sudo apt-get install -y calibre
sudo apt-get install -y checkbashisms # syntax checker for shell scripts
sudo apt-get install -y cifs-utils # SMB cross-platform file sharing
sudo apt-get install -y clementine
sudo apt-get install -y cryptsetup
sudo apt-get install -y cuetools
sudo apt-get install -y curl
sudo apt-get install -y cmus
sudo apt-get install -y curlftpfs
sudo apt-get install -y cvs
sudo apt-get install -y deluge          # python based torrent client
sudo apt-get install -y dos2unix        # fix file problems between Windows and Unix
sudo apt-get install -y easytag         # edit id tags of mp3
sudo apt-get install -y exfalso
sudo apt-get install -y exfat-fuse      # for mounting ext4
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y exuberant-tags
sudo apt-get install -y ffmpeg
sudo apt-get install -y fig2ps
sudo apt-get install -y fig2sty
sudo apt-get install -y flac
sudo apt-get install -y flashplugin-installer
sudo apt-get install -y ftp
sudo apt-get install -y handbrake
sudo apt-get install -y gdebi-core # easier installation of packages and resolves dependencies in a better way
sudo apt-get install -y gedit
sudo apt-get install -y gcc
sudo apt-get install -y gftp
sudo apt-get install -y ghc
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras
sudo apt-get install -y gitg
sudo apt-get install -y gitk
sudo apt-get install -y gmrun # Small window-prompt for running programs, used by luca
sudo apt-get install -y gparted # better then using fdisk in the terminal
sudo apt-get install -y graphicsmagick-libmagick-dev-compat
sudo apt-get install -y gstreamer0.10-lame
sudo apt-get install -y gstreamer0.10-plugins-bad
sudo apt-get install -y gstreamer0.10-plugins-good
sudo apt-get install -y gstreamer0.10-plugins-ugly
sudo apt-get install -y gnupg
sudo apt-get install -y gthumb
sudo apt-get install -y guvcview
sudo apt-get install -y hpijs
sudo apt-get install -y htop
sudo apt-get install -y hugo # need for my finanzen blog
sudo apt-get install -y imagemagick
sudo apt-get install -y inkscape
sudo apt-get install -y intltool
sudo apt-get install -y jfstils
sudo apt-get install -y kazam
sudo apt-get install -y lame
sudo apt-get install -y laptop-mode-tools # saving battery life => configuration during installation
sudo apt-get build-dep -y libcurl4-openssl-dev
sudo apt-get install -y libcurl3-dev # need for softcover
sudo apt-get install -y libatk1.0-dev
sudo apt-get install -y libbonoboui2-dev
sudo apt-get install -y libcairo2-dev
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libgnome2-dev
sudo apt-get install -y libgraph-writer-graphviz-perl
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libmagic-dev
sudo apt-get install -y libmagickand-dev
sudo apt-get install -y libmagickcore-dev
sudo apt-get install -y libmagickwand-dev # needed for rmagick ruby gem
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y libncurses-dev # need for cmus
sudo apt-get install -y libpq-dev
sudo apt-get install -y libreadline-dev # needed to start the rails console
sudo apt-get install -y libreadline5-dev
sudo apt-get install -y libreoffice-calc
sudo apt-get install -y libreoffice-gtk
sudo apt-get install -y libreoffice-impress
sudo apt-get install -y libreoffice-writer
sudo apt-get install -y libsasl2-dev # for memcached gem
sudo apt-get install -y libsqlite3-dev # need for sqlite3 gem (ruby)
sudo apt-get install -y libssl-dev
sudo apt-get install -y libx11-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y libxpm-dev
sudo apt-get install -y libxslt-dev
sudo apt-get install -y libxt-dev
sudo apt-get install -y lynx
sudo apt-get install -y make
sudo apt-get install -y meld
sudo apt-get install -y mencoder
sudo apt-get install -y mercurial # enables hb command
sudo apt-get install -y mozilla-plugin-gnash
sudo apt-get install -y nautilus
sudo apt-get install -y ncurses-term # additional terminal configuration
sudo apt-get install -y nfs-kernel-server
sudo apt-get install -y npm
sudo apt-get install -y ntfs-config
sudo apt-get install -y openssl # need for node
sudo apt-get install -y p7zip-full
sudo apt-get install -y pandoc
sudo apt-get install -y pdfchain
sudo apt-get install -y pdftk
sudo apt-get install -y pngcrush
sudo apt-get install -y powertop
sudo apt-get install -y preload
sudo apt-get install -y procps # need for pgrep package
sudo apt-get install -y pv
sudo apt-get install -y python-fontforge # need poweline fonts
sudo apt-get install -y python-pip # need to install python extensions via pip
sudo apt-get install -y python-software-properties
sudo apt-get install -y python3
sudo apt-get install -y python3-pip
sudo apt-get install -y rhythmbox
sudo apt-get install -y rake
sudo apt-get install -y rar
sudo apt-get install -y roxterm
sudo apt-get install -y screenkey
sudo apt-get install -y seahorse # key management
sudo apt-get install -y shntool
sudo apt-get install -y soundconverter
sudo apt-get install -y sox
sudo apt-get install -y sqlite3
sudo apt-get install -y sqlmap
sudo apt-get install -y subversion
sudo apt-get install -y tree
sudo apt-get install -y vinagre # rdp for gnome
sudo apt-get install -y vlc
sudo apt-get install -y wkhtmltopdf
sudo apt-get install -y wmctrl
sudo apt-get install -y xfce4-dev-tools
sudo apt-get install -y xfce4-screenshooter
sudo apt-get install -y xcfa
sudo apt-get install -y xclip
sudo apt-get install -y xfig
sudo apt-get install -y xournal
sudo apt-get install -y xpdf
sudo apt-get install -y xsel # needed for tmux buffer copy and paste with clipboard
sudo apt-get install -y zsnes

sudo apt-get install -y icedtea-plugin # Java Applet Browser support
sudo apt-get install -y icedtea-8-plugin # Java Applet Browser support

# Macht ärger :)
# sudo apt-get install -y libdvd-pkg # encrypted DVD playback

# install missing codecs, to play all videos and dvd formats
sudo apt-get install -y xubuntu-restricted-extras libavcodec-extra ubuntu-restricted-extras

# qtpass (https://github.com/IJHack/qtpass)
sudo apt-get install -y qtpass


# }}}
# Update and upgrade {{{

#sudo apt-get -y update
#sudo apt-get -y upgrade

# }}}
# Cleanup {{{

#sudo apt autoremove

# }}}
