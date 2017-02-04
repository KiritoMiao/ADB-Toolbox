@echo off
title 安卓工具箱
:c1
echo 1.修复安卓WIFI感叹号
echo 2.安装应用程序
echo R 重新启动
echo S 打开ADB SHELL
echo 请输入选择项目的序号：
set /p ID=
IF "%id%"=="1" goto wifi
IF "%id%"=="2" goto apk
IF "%id%"=="S" goto shell
IF "%id%"=="R" goto reboot
echo 错误的输入
goto c1
:reboot
adb shell "reboot"
exit
:wifi
echo 1.修复安卓WIFI感叹号 屏蔽法
echo 2.修复安卓WIFI感叹号（5.0-7.1）修改主机法
echo 3.修复安卓WIFI感叹号（7.1.1）修改主机法
echo 4.恢复所有更改
echo 请输入选择项目的序号：
set /p CID=
IF "%cid%"=="1" goto wifi1
IF "%cid%"=="2" goto wifi2
IF "%cid%"=="3" goto wifi3
IF "%cid%"=="4" goto wifi4
echo 错误的输入
goto wifi
:shell
adb shell
goto c1
:apk
echo 将apk拖入框内并回车
set /p APK=
adb install %APK%
goto c1
:wifi1
adb shell "settings put global captive_portal_detection_enabled 0"
echo 命令执行成功
goto c1
:wifi2
adb shell "settings put global captive_portal_server noisyfox.cn"
echo 命令执行成功
goto c1
:wifi3
adb shell "settings put global captive_portal_https_url https://www.noisyfox.cn/generate_204"
echo 命令执行成功
goto c1
:wifi4
adb shell "settings put global captive_portal_use_https 1"
echo 命令执行成功
adb shell "settings delete global captive_portal_server"
echo 命令执行成功
goto c1