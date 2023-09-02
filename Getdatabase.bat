@echo off
wget --user=EAV-0390167873 --password=ua526pkuub -O C:\update\offline_update_eav.zip http://download.eset.com/download/engine/eav/offline_update_eav.zip

echo Download complete!

"C:\Program Files (x86)\7-Zip\7z.exe" x -aoa "C:\update\offline_update_eav.zip" -o"C:\update"
