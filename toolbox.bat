@echo off
echo 初始化服务
adb kill-server
echo 等待设备
echo 请在设备上打开ADB调试，并授权电脑
echo 如授权后无法进行链接，请关闭腾讯/360/百度/阿里系应用再试
adb wait-for-device
adb devices
echo 初始化成功
clear
start toolbox.init.bat