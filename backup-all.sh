#!/usr/bin/bash

./.unlock-backup.sh
cp * backup-all/ && echo "[+]Backup Successfull" || echo "[-]Backup Failed" 
./.lock-backup.sh
