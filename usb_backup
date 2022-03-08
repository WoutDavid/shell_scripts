#!/bin/bash
start=`date +%s`

cd /home/nacho/Documents/usb_backup
doy=$(date +%j)
zip -r /home/nacho/Documents/usb_backup/backup_$doy /media/nacho/USB-DAVID/*
echo "---- Backup complete! ----"
ls /home/nacho/Documents/usb_backup/ | grep -v backup_$doy* | xargs rm
echo "---- Removing other backups complete. ----" 
end=`date +%s`
runtime=$((end-start))
runtime_minutes=$((runtime / 60))
echo "Backup up took ${runtime_minutes} minutes."
