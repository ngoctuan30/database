@echo off
setlocal

set "folderPath=C:\update"

if not exist "%folderPath%" (
    mkdir "%folderPath%"
    echo Da tao thanh cong.
) else (
    echo Da ton tai thu muc.
)
endlocal
wget --user=EAV-0390167873 --password=ua526pkuub -O C:\update\offline_update_eav.zip http://download.eset.com/download/engine/eav/offline_update_eav.zip
@echo off
setlocal

set "installDir=C:\Program Files (x86)\7-Zip"
if not exist "%installDir%\7z.exe" (
    wget https://www.7-zip.org/a/7z2301.msi
    7z2301.msi /q    
    echo Cai dat thanh cong.
) else (
    echo Da cai roi.
)
endlocal

"C:\Program Files (x86)\7-Zip\7z.exe" x -aoa "C:\update\offline_update_eav.zip" -o"C:\update"
