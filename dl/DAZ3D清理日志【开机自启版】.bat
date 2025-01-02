@ECHO OFF
TITLE %device_name%     By：xiaoxiao

ECHO. 【删除 log.txt 和 dazstudio.dau】
del "%AppData%\DAZ 3D\Studio4\log*.txt" 
del "%AppData%\DAZ 3D\Studio4\dazstudio.dau" 
ECHO. 复制【清理DAZ3D日志】作为开机自启计划
copy DAZ3D清理日志【开机自启版】.bat "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"  

  
