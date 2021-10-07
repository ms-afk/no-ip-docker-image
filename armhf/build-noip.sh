#!/bin/sh
#https://www.noip.com/support/knowledgebase/install-ip-duc-onto-raspberry-pi/
echo "[*] Installing noip..."
wget https://www.noip.com/client/linux/noip-duc-linux.tar.gz
tar vzxf noip-duc-linux.tar.gz
rm noip-duc-linux.tar.gz
cd noip-*
make

#make install:
EXEC_PATH=/usr/local/bin
CONF_PATH=/usr/local/etc
test ! -d $EXEC_PATH && mkdir -p $EXEC_PATH
test ! -d $CONF_PATH && mkdir -p $CONF_PATH
cp noip2 $EXEC_PATH/noip2
make clean
cd ..
rm -r noip-*
