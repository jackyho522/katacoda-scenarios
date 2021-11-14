#/bin/bash

mkdir e-commerce
cd e-commerce
mkdir cfg
mkdir db_data
mkdir plugins
mkdir scripts
mkdir wordpress
mkdir grafana
touch ./cfg/my.cnf
mkdir ./grafana/data
touch ./scripts/permission.sql
chmod -R 777 grafana
ls
pwd
echo "Different folders will be created.\n
These folders are used for bind mounting\n
All files will be run in e-commerce directory\n"
