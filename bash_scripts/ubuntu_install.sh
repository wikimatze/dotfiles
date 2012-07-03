# Remove files {{{

sudo apt-get remove -y gnome-games-common checkbox evolution tomboy empathy libsane

# }}}
# Install of packages {{{
sudo apt-get install -y ack-grep
sudo apt-get install -y adobe-flashplugin
sudo apt-get install -y aircrack-ng
sudo apt-get install -y banshee
sudo apt-get install -y cuetools
sudo apt-get install -y libncurses-dev
sudo apt-get install -y libgnome2-dev
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libatk1.0-dev
sudo apt-get install -y libbonoboui2-dev
sudo apt-get install -y libcairo2-dev
sudo apt-get install -y libx11-dev
sudo apt-get install -y libxpm-dev
sudo apt-get install -y libxt-dev
sudo apt-get install -y curl
sudo apt-get install -y clojure
sudo apt-get install -y curlftpfs
sudo apt-get install -y cvs
sudo apt-get install -y exfalso
sudo apt-get install -y exuberant-tags
sudo apt-get install -y ffmpeg
sudo apt-get install -y fig2ps
sudo apt-get install -y htop
sudo apt-get install -y postgresql
sudo apt-get install -y tmux
sudo apt-get install -y fig2sty
sudo apt-get install -y filezilla
sudo apt-get install -y flac
sudo apt-get install -y flashplugin-installer
sudo apt-get install -y ftp
sudo apt-get install -y gimp
sudo apt-get install -y python2.6-dev
sudo apt-get install -y git-core
sudo apt-get install -y git-doc
sudo apt-get install -y gitg
sudo apt-get install -y gitk
sudo apt-get install -y gstreamer0.10-lame
sudo apt-get install -y guake
sudo apt-get install -y guvcview
sudo apt-get install -y gxine
sudo apt-get install -y hpijs
sudo apt-get install -y imagemagick
sudo apt-get install -y inkscape
sudo apt-get install -y intltool
sudo apt-get install -y jfstils
sudo apt-get install -y lame
sudo apt-get install -y libgraph-writer-graphviz-perl
sudo apt-get install -y libreadline5-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y libxslt-dev
sudo apt-get install -y libpq-dev
sudo apt-get install -y dropbox
sudo apt-get install -y mailutils
sudo apt-get install -y mencoder
sudo apt-get install -y mozilla-plugin-gnash
sudo apt-get install -y sqlmap
sudo apt-get install -y wmctrl
sudo apt-get install -y p7zip-full
sudo apt-get install -y pandoc
sudo apt-get install -y pdfchain
sudo apt-get install -y pdftk
sudo apt-get install -y pngcrush
sudo apt-get install -y powertop
sudo apt-get install -y phpunit
sudo apt-get install -y php-codesniffer
sudo apt-get install -y powertop
sudo apt-get install -y python-gtkspell
sudo apt-get install -y tig
sudo apt-get install -y rar
sudo apt-get install -y ack-grep
sudo apt-get install -y rhythmbox
sudo apt-get install -y scala
sudo apt-get install -y sqlite3
sudo apt-get install -y scrot
sudo apt-get install -y shntool
sudo apt-get install -y skype
sudo apt-get install -y soundconverter
sudo apt-get install -y sox
sudo apt-get install -y subversion
sudo apt-get install -y openjdk-7-jre
sudo apt-get install -y tetex-base
sudo apt-get install -y tetex-bin
sudo apt-get install -y tetex-extra
sudo apt-get install -y tex-common
sudo apt-get install -y tex4ht
sudo apt-get install -y texlive
sudo apt-get install -y texlive-base
sudo apt-get install -y gstreamer0.10-plugins-good
sudo apt-get install -y gstreamer0.10-plugins-bad
sudo apt-get install -y gstreamer0.10-plugins-ugly
sudo apt-get install -y ubuntu-restricted-extra
sudo apt-get install -y vim
sudo apt-get install -y vim-gnome
sudo apt-get install -y xfig
sudo apt-get install -y xournal
sudo apt-get install -y rake
sudo apt-get install -y xpdf
sudo apt-get install -y zsnes
sudo apt-get install -y mercurial # enables hb command

# }}}
# Remove fancy stuff {{{

sudo apt-get remove -y ruby1.8-dev
sudo apt-get remove -y libruby1.8

# }}}
# Update and upgrade {{{

sudo apt-get update -y
sudo apt-get upgrade -y

# }}}
# Unimportant stuff {{{

#sudo apt-get install -y virtualbox-guest-additions
#sudo apt-get install -y virtualbox-ose
#sudo apt-get install -y vorbis-tools
#sudo apt-get install -y sun-java6-jdk  # not available in > 11.10
#sudo apt-get install -y sun-java6-jre
#sudo apt-get install -y phpmyadmin
#sudo apt-get install -y mysql-server

# }}}