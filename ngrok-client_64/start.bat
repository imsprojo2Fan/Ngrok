@echo OFF
color 0a
Title 小米球Ngrok启动工具 by:刺球
Mode con cols=109 lines=30
:START
ECHO.
Echo                  ==========================================================================
ECHO.
Echo                                         小米球Ngrok客户端启动工具
ECHO.
Echo                                         作者:刺球 QQ：752102401
ECHO.
Echo                                         官方QQ群：150134730
ECHO.
Echo                                         官方论坛：www.ciqiuwl.cn
ECHO.
Echo                                         更多版本：http://ngrok.ciqiuwl.cn
ECHO.
Echo                                    已出VIP收费版本，更强、更快、更稳，欢迎体验
ECHO.
Echo                  ==========================================================================
Echo.
echo.
echo.
:TUNNEL
Echo               输入需要启动的域名前缀，如“aa” ，即分配给你的穿透域名为：“aa.ngrok.xiaomiqiu.cn”
ECHO.
ECHO.
ECHO.
set /p clientid=   请输入需映射前缀：
ECHO.
ECHO.
set /p port=   请输入需映射端口：
echo.
ngrok -config=ngrok.cfg -subdomain %clientid% %port%
PAUSE
goto TUNNEL

