sudo apt-get install nodejs

cd /tmp && wget http://nodejs.org/dist/node-latest.tar.gz && tar xvfz node-latest.tar.gz
./configure && make && sudo make

sudo npm install -g csslint jshint js-yaml claymate bower

