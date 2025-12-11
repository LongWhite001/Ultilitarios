ECHO off
cls
REM SCRIPT AUTOMATIZADO DE RECURSOS WINDOWS

rem Universal
Rem Definindo padroes do sistema
rem energia
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
rem desativando uac
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
rem mostrar icones
rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,0
rem configura teclado
RunDll32.exe shell32.dll,Control_RunDLL C:\Windows\system32\input.dll

set /p Qual a versao Instalada (W7_X86/W7_X64/W10)

rem Definindo Nome da Unidade C: e D:
label C: Windows_OS

rem Executa o Windows Media Player
"%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe" /prefetch:1

rem Desfragmentador de Disco
%windir%\system32\dfrgui.exe


rem Justifica Extensoes de Arquivos
gpedit.msc

echo Desabilitando Hibernacao do Windows
powercfg.exe /hibernate off
echo Concluido
pause

cls

echo Parando e Desabilitando Servico SysMan
net.exe stop sysmain
sc config sysmain start=disabled

echo Localize SYSMAIN e va em RECUPERACAO
echo Coloque nas Opcoes NAO EXECUTAR NEM UMA ACAO
echo Na caixa ZERAR CONTAGEM DE FALHAS coloque 9999 e APLIQUE
services.msc
pause

cls
echo Desabilitando Animacoes do Windows
echo Va em Avancado - Configuracoes e Desmarque as Caixar de Animar e de APLICAR
Rundll32 Shell32.dll,Control_RunDLL Sysdm.cpl,,3
pause

rem reinicia pc
shutdown /r /f /t 00




