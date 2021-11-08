#/bin/bash

mkdir e-commerce
cd e-commerce
mkdir cfg
mkdir db_data
touch ./cfg/my.cnf
mkdir grafana
mkdir ./grafana/data
mkdir plugins
mkdir scripts
mkdir wordpress
chmod -R 777 grafana
ls
pwd
echo "Different folders will be created.\n
These folders are used for bind mounting\n
All files will be run in e-commerce directory\n"
