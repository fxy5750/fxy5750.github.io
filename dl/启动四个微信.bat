@echo off
title 服务启动中

echo 检查微信是否运行

tasklist /FI "IMAGENAME eq WeChat.exe" | find /i "WeChat.exe" > nul
if %errorlevel% equ 1 (
    echo 微信没有运行，可以执行“启动微信多开脚本”.
) else (
    echo 你的电脑正在运行微信.
)

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

 
:杀死进程
taskkill /f /im WeChat.exe


start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

echo 即将自动关闭此窗口
timeout /t 3

exit