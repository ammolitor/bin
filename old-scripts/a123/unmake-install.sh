#!/bin/bash


echo "    /var/www/html/*"
sudo rm -rf /var/www/html/*
echo "    /var/www/cgi-bin/*"
sudo rm -rf /var/www/cgi-bin/*

echo "   /opt/sgss/"
sudo rm -rf /opt/sgss

echo "    event def database"
echo "    view database"
sudo rm -rf /var/opt/sgss
echo "    event database"
sudo rm -rf /var/spool/sgss
echo "    navigation database"
sudo rm -rf /var/lib/sgss
