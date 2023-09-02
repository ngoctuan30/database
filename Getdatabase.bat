@echo off
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
@echo off
setlocal

setlocal
set "installDir=C:\Program Files\7-Zip"
if not exist "%installDir%\7z.exe" (
    wget -O C:\Windows\Temp\7z2301.msi https://www.7-zip.org/a/7z2301-x64.msi
    "C:\Windows\Temp\7z2301-x64.msi" /q    
    echo Cai dat thanh cong.
) else (
    echo Da cai roi.
)
endlocal

"C:\Program Files\7-Zip\7z.exe" x -aoa "C:\Antivirus\update\offline_update_eav.zip" -o"C:\update"
