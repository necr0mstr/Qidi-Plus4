#!/bin/bash

BACKUPDIR="$HOME/git-files/Qidi-Plus4"
mkdir -p ${HOME}/logs/
mkdir -p ${BACKUPDIR}/`date +%F`/
rsync -avHl --exclude 'timelapse/*' --exclude 'gcodes/*' --exclude 'logs/*' $HOME/printer_data/ ${BACKUPDIR}/`date +%F`/ | tee -a $HOME/logs/klipper_backup_`date +%F`.log
rsync -avHl $HOME/mainsail-config/client.cfg ${BACKUPDIR}/`date +%F`/client.cfg-`date +%F` | tee -a $HOME/logs/klipper_backup_`date +%F`.log
