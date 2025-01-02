@ECHO OFF
TITLE %device_name%     By：xiaoxiao

ECHO. 【删除 log.txt 和 dazstudio.dau】
del "%AppData%\DAZ 3D\Studio4\log*.txt" 
del "%AppData%\DAZ 3D\Studio4\dazstudio.dau" 

echo 清理工作已完成，接下来你可以启动 DAZ 3D 了...
echo 即将自动关闭此窗口
timeout /t 3

exit

