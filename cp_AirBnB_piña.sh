#!/bin/bash


FECHA=`date +%Y%m%d%H`
COMMENT=update_${FECHA}

echo ${FECHA}

cd /home/vagrant/AirBnB_clone-1/
git pull

cd ..

cp -R AirBnB_clone-1/* AirBnB_KC/

cd /home/vagrant/AirBnB_KC/
git add .
git commit -m "${COMMENT}"
git push
