@echo off
setlocal

set "folderPath=C:\update"

if not exist "%folderPath%" (
    mkdir "%folderPath%"
    echo Thư mục đã được tạo thành công.
) else (
    echo Thư mục đã tồn tại.
)
endlocal
wget --user=EAV-0390167873 --password=ua526pkuub -O C:\update\offline_update_eav.zip http://download.eset.com/download/engine/eav/offline_update_eav.zip
echo Download complete!
@echo off
setlocal

set "installDir=C:\Program Files (x86)\7-Zip"
:: Kiểm tra xem 7-Zip đã cài đặt chưa
if not exist "%installDir%\7z.exe" (
    echo 7-Zip chưa được cài đặt. Đang tiến hành cài đặt...
    :: Tải 7-Zip từ trang chính thức
    wget https://www.7-zip.org/a/7z2301.msi   
    :: Tiến hành cài đặt 7-Zip
    7z2301.msi /q    
    echo Cài đặt 7-Zip thành công.
) else (
    echo 7-Zip đã được cài đặt trên máy tính.
)
endlocal

"C:\Program Files (x86)\7-Zip\7z.exe" x -aoa "C:\update\offline_update_eav.zip" -o"C:\update"
