@echo off

echo Execute como Administrador.
chcp 65001 >nul

title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Automatizar.Windows.11"
for /l %%i in (0,1,23) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls
echo ==================================================================
echo.
echo A Automatizacao do Windows Permite que o Usuario tenha
echo.
echo uma melhor experiencia com o Windows, e que ele funcione com
echo.
echo sua melhor performace.
echo Vamos La.
echo.
echo ==================================================================
pause

cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Definindo.Energia"
for /l %%i in (0,1,18) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
timeout /t 3 >nul
cls


chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Desativando.UAC"
for /l %%i in (0,1,17) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
timeout /t 3 >nul
cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Definindo.Icones.Principais"
for /l %%i in (0,1,29) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,0
timeout /t 3 >nul
cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Configurar.Teclado"
for /l %%i in (0,1,20) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

RunDll32.exe shell32.dll,Control_RunDLL C:\Windows\system32\input.dll
timeout /t 3 >nul
cls

set /p Qual a versao Instalada (W7_X86/W7_X64/W10)

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Definindo.Nome.de.Unidade-C:"
for /l %%i in (0,1,29) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

label C: Windows_OS
timeout /t 3 >nul
cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Executar.Windows.Midia.Player"
for /l %%i in (0,1,30) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

"%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe" /prefetch:1
timeout /t 3 >nul
cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Executar.Desfragmentador"
for /l %%i in (0,1,26) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

%windir%\system32\dfrgui.exe
timeout /t 3 >nul
cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Executar.GPEdit"
for /l %%i in (0,1,16) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

gpedit.msc
timeout /t 3 >nul
cls

chcp 65001 >nul
title Automatizar Windows 11
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Desabilitando.Hibernacao"
for /l %%i in (0,1,26) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

powercfg.exe /hibernate off
echo Concluido!
timeout /t 3 >nul
cls

Echo=====================================================
echo.
echo Processo Manual, Leia Atentamente.
echo.
echo Localize SYSMAIN e va em RECUPERACAO
echo Coloque nas Opcoes NAO EXECUTAR NEM UMA ACAO
echo Na caixa ZERAR CONTAGEM DE FALHAS coloque 9999 e APLIQUE
echo.
Echo=====================================================
echo Parando e Desabilitando Servico SysMan
net.exe stop sysmain
sc config sysmain start=disabled
services.msc
pause

cls

Echo=====================================================
echo.
echo Processo Manual, Leia Atentamente.
echo.
echo Desabilitando Animacoes do Windows:
echo Va em Avancado - Desenpenho - Configuracoes e Desmarque as Caixas de Animar e de APLICAR.
echo.
Echo====================================================
Rundll32 Shell32.dll,Control_RunDLL Sysdm.cpl,,3
pause
echo O Windows Sera Reiniciado Agora.
pause
shutdown -r -t 000