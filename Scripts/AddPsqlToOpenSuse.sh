#!/bin/sh
 #add repo
sudo zypper --non-interactive --quiet addrepo --refresh -p 90  http://download.opensuse.org/repositories/server:database:postgresql/openSUSE_Tumbleweed/ PostgreSQL
 #import keys
sudo zypper --gpg-auto-import-keys ref 

sudo zypper in postgresql postgresql-server postgresql-contrib

sudo systemctl enable postgresql

sudo systemctl start postgresql

sudo -i -u postgres