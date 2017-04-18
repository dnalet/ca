#!/bin/sh
mysql -u root -p spidermanComics < spidermanComics.sql
mysql -u root -p spidermanComics < QueryingSpidermanComics.sql
mysql -u root -p spidermanComics < Dump4-18.sql
