#!/bin/bash
VERSION=1.3.3
sudo pip install tox
cd /tmp && git clone https://github.com/qutebrowser/qutebrowser.git && cd qutebrowser && git checkout v$VERSION && tox -e mkvenv-pypi
sudo cp .venv/bin/qutebrowser /usr/local/bin

