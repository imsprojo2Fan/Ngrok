@echo OFF
color 0a
Title С����Ngrok�������� by:����
Mode con cols=109 lines=30
:START
ECHO.
Echo                  ==========================================================================
ECHO.
Echo                                         С����Ngrok�ͻ�����������
ECHO.
Echo                                         ����:���� QQ��752102401
ECHO.
Echo                                         �ٷ�QQȺ��150134730
ECHO.
Echo                                         �ٷ���̳��www.ciqiuwl.cn
ECHO.
Echo                                         ����汾��http://ngrok.ciqiuwl.cn
ECHO.
Echo                                    �ѳ�VIP�շѰ汾����ǿ�����졢���ȣ���ӭ����
ECHO.
Echo                  ==========================================================================
Echo.
echo.
echo.
:TUNNEL
Echo               ������Ҫ����������ǰ׺���硰aa�� �����������Ĵ�͸����Ϊ����aa.ngrok.xiaomiqiu.cn��
ECHO.
ECHO.
ECHO.
set /p clientid=   ��������ӳ��ǰ׺��
ECHO.
ECHO.
set /p port=   ��������ӳ��˿ڣ�
echo.
ngrok -config=ngrok.cfg -subdomain %clientid% %port%
PAUSE
goto TUNNEL

