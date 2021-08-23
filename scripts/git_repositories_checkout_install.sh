#!/bin/bash
DES=$HOME/git
SRC=git@github.com
mkdir -p $DES && cd $DES

repos=(
  JoshCheek/ruby-kickstart
  StudioNelstrom/vimdojo
  alexbeletsky/github-commits-widget
  danchoi/ri.vim
  fancyapps/fancyBox
  finnp/gitter-irc-bot
  gitig/Practical-Vim-Notes
  icholy/ttygif
  jgallen23/toc
  livingstyleguide/livingstyleguide
  nightsailer/padrino-sprockets
  padrino/padrino-framework
  padrino/padrino-recipes
  padrino/padrino-web
  padrinobot/padrinobot
  runpaint/read-ruby
  sotte/presenting.vim
  sozialhelden/brokenlift
  syn-systems/puppet-boilerplate-modules
  vhf/free-programming-books
  vimberlin/vimberlin.de
  vimberlin/vimberlinbot
  vimberlin/vimfest
  wikimatze/PadrinoBook
  wikimatze/awesome
  wikimatze/awesome-fallout
  wikimatze/brokenlifts-vm
  wikimatze/dotfiles
  wikimatze/hammer.vim
  wikimatze/hello-world-padrino-anynines-mysql
  wikimatze/i3files
  wikimatze/job-vacancy
  wikimatze/mailclient
  wikimatze/mdbook
  wikimatze/minimal-vim
  wikimatze/matomo-middleman
  wikimatze/mucks
  wikimatze/padrino-codeship
  wikimatze/padrino-hello-world-heroku
  wikimatze/padrino-hello-world-heroku-postgres
  wikimatze/padrino-livingstyleguide
  wikimatze/padrino-sprockets-example
  wikimatze/padrino-vagrant
  wikimatze/padrino-zsh-completion

  padrinobook/padrinobook.com

  wikimatze/pumog
  wikimatze/sweetie
  wikimatze/tocdown
  wikimatze/vim-banshee
  wikimatze/wikimatze.de
  wikimatze/zimki
  zurb/foundation
)

for repo in ${repos[*]}
do
  # cut away the repo owner
  if [ ! -d "${repo##*/}" ]; then
    git clone $SRC:$repo
  fi
done


git clone --recurse-submodules git@github.com:wikimatze/finanzen.git $DES/finanzen

