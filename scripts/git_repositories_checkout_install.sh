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
  gitig/Practical-Vim-Notes
  jgallen23/toc
  livingstyleguide/livingstyleguide
  neo/ruby_koans
  nightsailer/padrino-sprockets
  nightsailer/padrino-sprockets
  padrino/padrino-framework
  padrino/padrino-recipes
  padrino/padrino-web
  runpaint/read-ruby
  sotte/presenting.vim
  sozialhelden/brokenlift
  syn-systems/puppet-boilerplate-modules
  vhf/free-programming-books
  wikimatze/PadrinoBook
  wikimatze/awesome
  wikimatze/awesome-fallout
  wikimatze/brokenlifts-vm
  wikimatze/hammer.vim
  wikimatze/hello-world-padrino-anynines-mysql
  wikimatze/i3files
  wikimatze/job-vacancy
  wikimatze/mailclient
  wikimatze/minimal-vim
  wikimatze/mdbook
  wikimatze/mucks
  wikimatze/padrino-codeship
  wikimatze/padrino-hello-world-heroku
  wikimatze/padrino-hello-world-heroku-postgres
  wikimatze/padrino-livingstyleguide
  wikimatze/padrino-observer-example-app
  wikimatze/padrino-sprockets-example
  wikimatze/padrino-vagrant
  wikimatze/padrino-zsh-completion
  wikimatze/padrinorb-website
  wikimatze/pumog
  wikimatze/sponsorpay-api
  wikimatze/surveyor
  wikimatze/sweetie
  wikimatze/tocdown
  wikimatze/tocdown
  wikimatze/vim-banshee
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

