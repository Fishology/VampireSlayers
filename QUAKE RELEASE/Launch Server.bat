@echo off

rem ---------------------------------------------------
rem This batch mantains server running in case of crash
rem and handles server restart exit codes, relaunching.
rem ------------------------------ OfteN[cp] 14/12/2004

echo Launching Prozac QWSV... (permanent batch loop)

:begin

rem GARBAGE -heapsize 32768 207.88.6.18:27000 204.182.161.2:27000  +allow_download_maps 0 +sv_mintic .05 +fraglogfile +logfile 1 +gamedir fortress +rcon_password smartcock [+setmaster "192.246.40.37:27000 203.55.240.100:27000 192.246.40.37:27004 qwmaster.ocrana.de:27000 qwmaster.barrysworld.com:27000 192.246.40.37:27003"]

rem Use the following for a local server that doesnt ping masters
rem cpqwsv +gamedir fortress -mem 16

rem Use the following for a net server that should ping masters
cpqwsv +gamedir fortress -mem 32 -heapsize 32000 +setmaster "192.246.40.37:27000 203.55.240.100:27000 192.246.40.37:27004 qwmaster.ocrana.de:27000 qwmaster.barrysworld.com:27000 192.246.40.37:27003"

if errorlevel == 2 goto reset
if errorlevel == 1 goto crash

goto end

:reset
echo Restarting server... (Shell batch)
goto begin

:crash
echo Server crashed! Restarting... (Shell batch)
goto begin

:end
