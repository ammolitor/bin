#!/bin/bash
#Create event databased on a dev vm
srcdir=/opt/sgss/sql
############################################################################
echo -e "\nRemoving Existing Databases"

echo "    event def database"
sudo rm /var/opt/sgss/event_cfg.db

echo "    event database"
sudo rm /var/spool/sgss/event.db

echo "    navigation database"
sudo rm /var/lib/sgss/nav.sqlite

echo -e "    view database"
sudo rm /var/opt/sgss/view.db
############################################################################
echo -e "\nCreating New databases from scripts in" $srcdir

echo -e "    event def database"
sudo mkdir -p /var/opt/sgss
cat $srcdir/init_event_def_db.sql | sudo sqlite3 /var/opt/sgss/event_cfg.db

echo -e "    event database"
sudo mkdir -p /var/spool/sgss
cat $srcdir/init_events_db.sql | sudo sqlite3 /var/spool/sgss/event.db

echo -e "    navigation database"
sudo mkdir -p /var/lib/sgss
cat $srcdir/create_navigation.sql | sudo sqlite3 /var/lib/sgss/nav.sqlite
chown -R apache:apache /var/lib/sgss

echo -e "    view database"
cat $srcdir/view.sql | sudo sqlite3 /var/opt/sgss/view.db
