#!/bin/sh

cd /opt/iobroker

npm install iobroker --unsafe-perm && npm i --production --unsafe-perm
update-rc.d iobroker.sh remove && echo $(hostname) > .install_host
npm install node-gyp -g

/bin/sh /opt/scripts/iobroker_startup.sh