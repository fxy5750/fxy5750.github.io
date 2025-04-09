@echo off
chcp 65001 >nul  
:: 强制切换为UTF-8编码[2](@ref)


@echo off
title 微信多开助手（注册表路径自适应版）

:: 自动获取微信安装路径（优先注册表查询）
set "wechatPath="
for /f "tokens=2*" %%a in ('reg query "HKCU\Software\Tencent\WeChat" /v InstallPath 2^>nul') do set "wechatPath=%%b\WeChat.exe"

:: 路径有效性验证
if not exist "%wechatPath%" (
    echo 自动获取路径失败，尝试默认路径...
    set "wechatPath=C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
    if not exist "%wechatPath%" (
        echo 微信未安装在默认路径，请手动输入路径
        set /p "wechatPath=请输入WeChat.exe完整路径："
        if not exist "%wechatPath%" goto :error
    )
)

:: 杀死现有进程（解决多开限制）
taskkill /f /im WeChat.exe >nul 2>&1

:: 启动多实例（参数化控制数量）
echo 正在启动%instanceCount%个微信实例...
start "" "%wechatPath%"
start "" "%wechatPath%"

echo 操作完成，3秒后自动退出...
timeout /t 3 >nul
exit

:error
echo 错误：未找到微信客户端，请检查安装路径
pause