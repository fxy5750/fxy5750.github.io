@echo off
title ����������

echo ���΢���Ƿ�����

tasklist /FI "IMAGENAME eq WeChat.exe" | find /i "WeChat.exe" > nul
if %errorlevel% equ 1 (
    echo ΢��û�����У�����ִ�С�����΢�Ŷ࿪�ű���.
) else (
    echo ��ĵ�����������΢��.
)

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

 
:ɱ������
taskkill /f /im WeChat.exe


start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

start "" "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"

echo �����Զ��رմ˴���
timeout /t 3

exit