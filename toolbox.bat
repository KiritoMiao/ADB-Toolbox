@echo off
echo ��ʼ������
adb kill-server
echo �ȴ��豸
echo �����豸�ϴ�ADB���ԣ�����Ȩ����
echo ����Ȩ���޷��������ӣ���ر���Ѷ/360/�ٶ�/����ϵӦ������
adb wait-for-device
adb devices
echo ��ʼ���ɹ�
clear
start toolbox.init.bat