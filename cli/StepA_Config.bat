@echo off
title "ARNPerf v7.0.101017-py"
set DIR=%cd%

set /p host="Default SSH Host: (192.168.1.24) "
if "%host%" == "" set host=192.168.1.24

set /p port="Default SSH Port: (22) "
if "%port%" == "" set port=22

set /p user="Default SSH User: (root) "
if "%user%" == "" set user=root

set /p passwd="Default SSH Password: (root) "
if "%passwd%" == "" set passwd=root

set /p log="Default Test Log: (d24demo.log) "
if "%log%" == "" set log=d24demo.log

set /p note="Default Test Note: (demo) "
if "%note%" == "" set note=demo

set /p loc="Default Test Location: (BQL-BJ-CN) "
if "%loc%" == "" set loc=BQL-BJ-CN

del ARNPerf.conf 2>nul
pause

echo %host%,%port%,%user%,%passwd%,%log%,%note%,%loc% > ARNPerf.conf
pause
