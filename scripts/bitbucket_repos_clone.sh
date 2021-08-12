#!/bin/bash
mkdir -p $HOME/bitbucket

DES=$HOME/bitbucket
SRC=git@bitbucket.org
mkdir -p $DES && cd $DES

repos=(
  wikimatze/die-lernhelfer-admin
  wikimatze/die-lernhelfer-website
  wikimatze/example_book
  wikimatze/fragebogen-masterarbeit
  wikimatze/jenkins
  wikimatze/padrinocasts
  wikimatze/padrino-appsterdam
  wikimatze/padrino-spellinterieur
  wikimatze/pmwiki-dropcaps-recipe
  wikimatze/pmwiki-headlineimage-recipe
  wikimatze/pmwiki-linkicons-recipe
  wikimatze/pmwiki-syntaxlove-recipe
  wikimatze/pmwiki-twitter-recipe
  wikimatze/presentations
  wikimatze/rails-sample-app
  wikimatze/ruby-scripts
  wikimatze/vocabularly
)

for repo in ${repos[*]}
do
  # cut away the repo owner
  if [ ! -d "${repo##*/}" ]; then
    git clone $SRC:$repo $DES/${repo##*/}
  fi
done

