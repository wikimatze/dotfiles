#!/bin/bash
DES=$HOME/git
SRC=git@github.com:wikimatze

git clone $SRC/padrino-framework.git $DES/padrino-framework-wikimatze && cd $DES/padrino-framework-wikimatze && git remote add padrino https://github.com/padrino/padrino-framework.git
git clone $SRC/padrino-recipes.git $DES/padrino-recipes-wikimatze && cd $DES/padrino-recipes-wikimatze && git remote add padrino https://github.com/padrino/padrino-recipes.git

