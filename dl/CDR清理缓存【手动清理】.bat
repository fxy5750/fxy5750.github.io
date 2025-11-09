@ECHO OFF
TITLE %device_name%     By：xiaoxiao

ECHO. 【删除AppData\Corel 目录】
rmdir /S /Q "%AppData%\Corel"

echo 清理工作已完成，接下来你可以启动 CorelDRAW 了...
echo 即将自动关闭此窗口
timeout /t 3

exit

