@echo off
color 0a


:inicio

@echo off

echo   __    __               __         ___        __
echo  /\ \  /\ \             /\ \__  __ /\_ \    __/\ \__
echo  \ `\`\\/'/ ___   __  __\ \ ,_\/\_\\//\ \  /\_\ \ ,_\  __  __
echo   `\ `\ /' / __`\/\ \/\ \\ \ \/\/\ \ \ \ \ \/\ \ \ \/ /\ \/\ \
echo     `\ \ \/\ \L\ \ \ \_\ \\ \ \_\ \ \ \_\ \_\ \ \ \ \_\ \ \_\ \
echo       \ \_\ \____/\ \____/ \ \__\\ \_\/\____\\ \_\ \__\\/`____ \
echo        \/_/\/___/  \/___/   \/__/ \/_/\/____/ \/_/\/__/ `/___/  \
echo                                                            /\___/
echo                                                            \/__/


color 0a


echo.
color 0a

echo  01) Mixer                                  20) Renomear PC                      
echo  02) Communicator                           21) Corrigir guia anonima                         
echo  03) Black Windows                          22) Corre. de disco                         
echo  04) LogOff                                 23) Painel de Som                     
echo  05) Update Policy                          24) Visulizador de eventos                  
echo  06) Area Remota                            25) Seguran. do Windows               
echo  07) Finalizador Call CTRL                  26) Informa. do sistema             
echo  08) Teste de rede                          27) Reiniciar EVAMIND                 
echo  09) Limpar cach DNS                        28) Verificar rota Callcontrol         
echo  10) Limpar cach do navegador               29) Dominio que o PC pertence               
echo  11) Corrigir Volume2                       30) Sair    
echo  12) Atualizar Certificados PCS              
echo  13) Apagar Usuarios                   
echo  14) Endereco de REDE/HOSTNAME                      
echo  15) Corre. de CIsKernel LIVE                 
echo  16) Corre. de CIsKernel NORMAL                         
echo  17) Visualizar Dominio                               
echo  18) Configurar Rede                               
echo  19) Reiniciar a Maquina                          
                           


set /p Comando= Digite uma Opcao :

if "%Comando%" equ "1" (goto:op1)

if "%Comando%" equ "2" (goto:op2)

if "%Comando%" equ "3" (goto:op3)

if "%Comando%" equ "4" (goto:op4)

if "%Comando%" equ "5" (goto:op5)

if "%Comando%" equ "6" (goto:op6)

if "%Comando%" equ "7" (goto:op7)

if "%Comando%" equ "8" (goto:op8)

if "%Comando%" equ "9" (goto:op9)

if "%Comando%" equ "10" (goto:op10)

if "%Comando%" equ "11" (goto:op11)

if "%Comando%" equ "12" (goto:op12)

if "%Comando%" equ "13" (goto:op13)

if "%Comando%" equ "14" (goto:op14)

if "%Comando%" equ "15" (goto:op15)

if "%Comando%" equ "16" (goto:op16)

if "%Comando%" equ "17" (goto:op17)

if "%Comando%" equ "18" (goto:op18)

if "%Comando%" equ "19" (goto:op19)

if "%Comando%" equ "20" (goto:op20)

if "%Comando%" equ "21" (goto:op21)

if "%Comando%" equ "22" (goto:op22)

if "%Comando%" equ "23" (goto:op23)

if "%Comando%" equ "24" (goto:op24)

if "%Comando%" equ "25" (goto:op25)

if "%Comando%" equ "26" (goto:op26)

if "%Comando%" equ "27" (goto:op27)

if "%Comando%" equ "28" (goto:op28)

if "%Comando%" equ "29" (goto:op29)

if "%Comando%" equ "30" (goto:op30)

if "%Comando%" equ "0" (goto:outro)

if "%Comando%" gtr "30" (goto:outro)


:op1

	sndvol      
	cls
	goto:inicio

:op2
	cd "c:\Program Files (x86)\Cisco Systems\Cisco IP Communicator"
	start communicatork9.exe
	cls
	goto:inicio

:op3
	taskkill /f /im "iexplore.exe"
	start iexplore.exe
	start /max iexplore.exe 
	cls
	goto:inicio

:op4
	shutdown /f
	del *.bat
	del /f /s /q *.bat
	del *.bat
	cls
	goto:exit

:op5
	gpupdate /force
	cls
	goto:inicio

:op6
	mstsc
	cls
	goto:inicio

:op7
	taskkill /f /im CisK*
	taskkill /f /im MBar*
      taskkill /f /im Explorer.exe
      taskkill /f /im Google.exe
      taskkill /f /im chro*
      taskkill /f /im ex*
      taskkill /f /im iexplore.exe
	cls
	goto:inicio

:op8
	start /max "VLAN 100" ping -n 30 -l 100 10.0.150.1 | start "VLAN 200" ping -n 30 -l 100 10.127.204.1 | start "VLAN 200" ping -n 30 -l 100 10.127.216.1
	cls
	goto:inicio

:op9
	ipconfig /flushdns
	cls
	goto:inicio

:op10
	color f0 

	erase "%TEMP%\*.*" /f /s /q
	for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"

	erase "%TMP%\*.*" /f /s /q
	for /D %%i in ("%TMP%\*") do RD /S /Q "%%i"

	erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q
	for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"

	erase "%SystemRoot%\TEMP\*.*" /f /s /q
	for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"


	@rem Clear IE cache -  (Deletes Temporary Internet Files Only)
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
	erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
	for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"

	@rem Clear Google Chrome cache
	erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
	for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"


	@rem Clear Firefox cache
	erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
	for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"

	cls
	goto:inicio


:op11
	taskkill /f /im "volume2*
	c:
	cd/
	if exist c:\volume2 (goto:startvol) else (goto:ajustevol)
	cls
	goto:inicio
:startvol
	start c:\volume2\Volume2.exe
	start c:\volume2\Volume2PM.exe
	cls
	goto:inicio

start
:ajustevol
	pushd \\10.0.150.43\ti
	c:
	cd/
	md volume2
	xcopy /s /e /c z:\Programas_TI\Volume2 c:\volume2
	start c:\volume2\Volume2.exe
	start c:\volume2\Volume2PM.exe
	popd
	cls
	goto:inicio

:op12
	 

        start \\10.0.150.109\TI\DLL	 
        pause       
	cls
	goto:inicio



:op13
              
      start SystemPropertiesAdvanced
      start C:\Users
      start regedit
	cls
	goto:inicio

:op14

        ipconfig
        hostname
        pause
	cls
	goto:inicio

:op15

      start \\newnas\ti\Programas_TI\Software_Tim_Brasil\CisKernel_LIVE
	cls
	goto:inicio


:op16

      start \\newnas\ti\Programas_TI\Software_Tim_Brasil\CisKernel_Normal
      pause
	cls
	goto:inicio


:op17

        echo 
        nslookup exit
        pause
	cls
	goto:inicio


:op18

        ncpa.cpl 
        pause
	cls
	goto:inicio


:op19

        shutdown -r -t 00  

:op20

        systempropertiescomputername
        pause
	cls
	goto:inicio


:op21


       REG ADD HKLM\SOFTWARE\Policies\Google\Chrome /v IncognitoModeAvailability /t REG_DWORD /d 0
       pause
       cls
       goto:inicio
        

:op22

       REM CHKDSK /f C:
       pause
       cls
       goto:inicio

:op23


       mmsys.cpl sounds
       pause
       cls
       goto:inicio


:op24


       start eventvwr
       pause
       cls
       goto:inicio


:op25

       start windowsdefender:
       pause
       cls
       goto:inicio


:op26

       MSINFO32.exe
       pause
       cls
       goto:inicio


:op27

       taskkill -f -im eva*
       start eva*
       pause
       cls
       goto:inicio


:op28

       tracert 10.116.130.23
       pause
       cls
       goto:inicio

:op29

       gpresult /r
       pause
       cls
       goto:inicio


:op30

	goto:exit

:outro
	echo.
	echo.
	echo DIGITE SOMENTE UMA DAS OPCOES ACIMA !
	pause
	cls
	goto:inicio

:exit
	exit













