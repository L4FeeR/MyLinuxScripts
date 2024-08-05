#!/usr/bin/bash
clear
echo "Backup in progress ..."
sleep 0.5
./.unlock-backup.sh

c=`ls .backup/tar/ | nl | tail -n1`
n=`expr $c + 1`
echo "Current Backup File Iter : $n"

tar -cvzf ./.backup/tar/backup-$(date +%d-%m-%y)-$n.tar.xz * && echo "[+]Backup Succesfull to tar.gz" || echo "[+]Backup Failed"



./.lock-backup.sh
