@echo off
taskkill /IM "wget.exe" /F
setlocal

set "folderPath=C:\Antivirus\update"

if not exist "%folderPath%" (
    mkdir "%folderPath%"
    echo Da tao thanh cong.
) else (
    echo Da ton tai thu muc.
)
endlocal
wget --user=EAV-0390167873 --password=ua526pkuub -O C:\Antivirus\update\offline_update_eav.zip http://download.eset.com/download/engine/eav/offline_update_eav.zip
"C:\Program Files\7-Zip\7z.exe" x -aoa "C:\Antivirus\update\offline_update_eav.zip" -o"C:\Antivirus\update"
