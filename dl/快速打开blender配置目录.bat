@echo off
chcp 65001 >nul  
:: 强制切换为UTF-8编码[2](@ref)
TITLE %device_name%     By：xiaoxiao

@echo off
start explorer "%AppData%\Blender Foundation\Blender"


echo 打开完毕
echo 即将自动关闭此窗口
timeout /t 0

exit