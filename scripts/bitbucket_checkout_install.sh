#!/bin/bash
DES=$HOME/bitbucket
SRC=git@bitbucket.org:wikimatze
mkdir -p $DES && cd $DES

git clone $SRC/die-lernhelfer-admin
git clone $SRC/die-lernhelfer-website
git clone $SRC/example_book
git clone $SRC/fragebogen-masterarbeit
git clone $SRC/padrino-appsterdam
git clone $SRC/padrino-spellinterieur
git clone $SRC/pmwiki-dropcaps-recipe
git clone $SRC/pmwiki-headlineimage-recipe
git clone $SRC/pmwiki-linkicons-recipe
git clone $SRC/pmwiki-syntaxlove-recipe
git clone $SRC/pmwiki-twitter-recipe
git clone $SRC/presentations
git clone $SRC/rails-sample-app
git clone $SRC/ruby-scripts
git clone $SRC/vocabularly

