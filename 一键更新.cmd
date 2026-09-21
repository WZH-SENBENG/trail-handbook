@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 正在把桌面上的作品同步到线上...
copy /Y "C:\Users\wzhww\Desktop\travel-handbook-v5.6.html" index.html >nul
git add -A
git -c user.name="travel-handbook" -c user.email="local@localhost" commit -q -m "更新：%date% %time%"
git push -q
echo.
echo 完成。约 1 分钟后生效：https://wzh-senbeng.github.io/trail-handbook/
pause
