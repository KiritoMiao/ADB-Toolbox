@echo off
title ��׿������
:c1
echo 1.�޸���׿WIFI��̾��
echo 2.��װӦ�ó���
echo R ��������
echo S ��ADB SHELL
echo ������ѡ����Ŀ����ţ�
set /p ID=
IF "%id%"=="1" goto wifi
IF "%id%"=="2" goto apk
IF "%id%"=="S" goto shell
IF "%id%"=="R" goto reboot
echo ���������
goto c1
:reboot
adb shell "reboot"
exit
:wifi
echo 1.�޸���׿WIFI��̾�� ���η�
echo 2.�޸���׿WIFI��̾�ţ�5.0-7.1���޸�������
echo 3.�޸���׿WIFI��̾�ţ�7.1.1���޸�������
echo 4.�ָ����и���
echo ������ѡ����Ŀ����ţ�
set /p CID=
IF "%cid%"=="1" goto wifi1
IF "%cid%"=="2" goto wifi2
IF "%cid%"=="3" goto wifi3
IF "%cid%"=="4" goto wifi4
echo ���������
goto wifi
:shell
adb shell
goto c1
:apk
echo ��apk������ڲ��س�
set /p APK=
adb install %APK%
goto c1
:wifi1
adb shell "settings put global captive_portal_detection_enabled 0"
echo ����ִ�гɹ�
goto c1
:wifi2
adb shell "settings put global captive_portal_server noisyfox.cn"
echo ����ִ�гɹ�
goto c1
:wifi3
adb shell "settings put global captive_portal_https_url https://www.noisyfox.cn/generate_204"
echo ����ִ�гɹ�
goto c1
:wifi4
adb shell "settings put global captive_portal_use_https 1"
echo ����ִ�гɹ�
adb shell "settings delete global captive_portal_server"
echo ����ִ�гɹ�
goto c1