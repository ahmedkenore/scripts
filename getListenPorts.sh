#!/bin/sh
# Ce scrpit a pour objectif de lister l'ensemble des ports en ecoute en local
netstat -laputen | grep -i "LISTEN" | awk '{ print $4 } ' | cut -d ':' -f 2 | grep -v grep > listen_ports.txt
