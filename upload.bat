@echo off
cd /d "%~dp0"

echo ===============================
echo   AUTO GIT UPDATE BY KHOA
echo ===============================
echo.

:: Kiem tra lock file
if exist ".git\index.lock" (
    echo === Phat hien index.lock - dang xoa... ===
    del .git\index.lock
)

:: Hoi noi dung commit
set /p msg=Nhap noi dung commit: 

echo.
echo === Dang add file... ===
git add .

echo.
echo === Dang commit... ===
git commit -m "%msg%"

echo.
echo === Dang push... ===
git push

echo.
echo ===============================
echo   DONE ! Moi thu da cap nhat.
echo ===============================
pause
