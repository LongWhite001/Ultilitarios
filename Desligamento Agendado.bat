@echo off

echo ===================================
echo     Fechando Programas Abertos
echo ===================================
echo:
taskkill /f /im chrome.exe
taskkill /f /im brave.exe
taskkill /f /im msedge.exe
taskkill /f /im opera.exe
taskkill /f /im vlc.exe
taskkill /f /im FoxitPDFReader.exe
taskkill /f /im OUTLOOK.exe
taskkill /f /im WINWORD.exe
taskkill /f /im EXCEL.exe
taskkill /f /im WhatsApp.exe
taskkill /f /im Acrobat.exe
taskkill /f /im AcroRd32.exe
taskkill /f /im Photoshop.exe
taskkill /f /im POWERPNT.exe
taskkill /f /im CCleaner64.exe
taskkill /f /im CCleaner.exe
taskkill /f /im DiskInfo64M.exe
taskkill /f /im DiskInfo64.exe
taskkill /f /im DiskInfo.exe
echo:
timeout /t 5 >nul
cls

echo ========================================
echo  O Desligamento Agendado Sera Iniciado:
echo ========================================

timeout /t 5 >nul

shutdown -s -t 000

