#!/bin/sh

BINURL="http://download.opalang.org/linux/opa_1.0.5%2Bbuild2988_amd64.release.run"

# Installing OPA, first push only
if [ ! -d ~/opa ] ; then
    mkdir ~/opa
    wget $BINURL -O install
    sh install -- ~/opa
fi

make
