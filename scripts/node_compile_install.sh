sudo apt-get update && apt-get install git-core curl build-essential openssl libssl-dev
cd /tmp && git clone https://github.com/joyent/node.git && git checkout v0.9.9
./configure --openssl-libpath=/usr/lib/ssl && make && make test && sudo make install

exec $SHELL
echo "Node version"
node -v

echo "NPM version"
npm -v

