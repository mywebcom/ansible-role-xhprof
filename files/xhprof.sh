#!/bin/bash
WEB_USER=$1
ANSIBLE_RESOURCE=$2
cd /home/${WEB_USER}/; 

if [ ! -f xhprof.tar.gz ]; then
	wget http://${ANSIBLE_RESOURCE}/xhprof.tar.gz; 
fi

if [ ! -d xhprof ]; then
	tar -xzvf xhprof.tar.gz; 
	chown -Rf www:www xhprof;
fi 

if [ -f xhprof.tar.gz ]; then
	rm xhprof.tar.gz
fi

exit 0