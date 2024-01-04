@echo off

echo Enabling WSL2

REM Enable WSL & Virtual Machine Platform
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

REM Set WSL default version to 2
wsl --set-default-version 2

REM Install Kali Linux
wsl --install -d kali-linux

echo Kali Linux installation initiated...

REM Wait for the user to restart and re-run the script
echo Please restart your computer and re-run this script.
pause
exit
