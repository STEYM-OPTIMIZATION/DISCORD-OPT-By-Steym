@echo off
:: github STEYM-OPTIMIZATION
mode 100,25
color F0                                    

:home
cls
title DISCORD OPTIMIZATOR by STEYM
call:riceoslogo
echo.
echo                                      Optimization DISCORD by STEYM
echo                                ========================================
echo.
echo          [1] Discord Optimization Guide                         [4] Remove overlay  
echo.  
echo          [2] OpenAsar                                           [5] Deleting language packs         
echo.
echo          [3] Clearing cache and logs                            [6] Debloat
echo.
echo.
choice /c:"123456" /n /m "%BS%                                   >:"
set MenuItem=%errorlevel%
if "%MenuItem%"=="1" goto guide                          
if "%MenuItem%"=="2" goto openasar
if "%MenuItem%"=="3" goto сlearing 
if "%MenuItem%"=="4" goto overlay
if "%MenuItem%"=="5" goto deleting
if "%MenuItem%"=="6" goto debloat
pause

:guide
cls
start https://teletype.in/@prom1sing/hyMDE_UWQnY
goto Home

<openasar>
  :openasar
  cls
  echo Closing Discord... (wait around 5 seconds)

  C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
  C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
  C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul

  C:\Windows\System32\TIMEOUT.exe /t 5 /nobreak > nul 2> nul

  echo Installing OpenAsar... (ignore any blue output flashes)
  copy /y "%localappdata%\Discord\app-1.0.9013\resources\app.asar" "%localappdata%\Discord\app-1.0.9013\resources\app.asar.backup" > nul 2> nul
  if exist "%localappdata%\Discord\app-1.0.9013\resources\_app.asar" copy /y "%localappdata%\Discord\app-1.0.9013\resources\_app.asar" "%localappdata%\Discord\app-1.0.9013\resources\app.asar.backup" > nul 2> nul
  if exist "%localappdata%\Discord\app-1.0.9013\resources\app.asar.orig" copy /y "%localappdata%\Discord\app-1.0.9013\resources\app.asar.orig" "%localappdata%\Discord\app-1.0.9013\resources\app.asar.backup" > nul 2> nul

  powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9013\resources\app.asar\"" > nul 2> nul

  powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9012\resources\app.asar\"" > nul 2> nul

  if exist "%localappdata%\Discord\app-1.0.9013\resources\_app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"%localappdata%\Discord\app-1.0.9013\resources\_app.asar\"" > nul 2> nul
  if exist "%localappdata%\Discord\app-1.0.9013\resources\app.asar.orig" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"%localappdata%\Discord\app-1.0.9013\resources\app.asar.orig\"" > nul 2> nul

  echo Opening Discord...
  start "" "%localappdata%\Discord\Update.exe" --processStart Discord.exe > nul 2> nul

  C:\Windows\System32\TIMEOUT.exe /t 1 /nobreak > nul 2> nul

  echo.
  echo.
  echo OpenAsar should be installed! You can check by looking for an "OpenAsar" option in your Discord settings.
  echo Not installed? Try restarting Discord, running the script again, or if still not join our Discord server.
  echo.
  echo openasar.dev
  timeout 1 >NUL 2>&1
  goto Home
</openasar>

<clearing>
  :сlearing 
  cls
  title Clear cache and logs
  :: discord 
  taskkill /IM "Discord.exe" /F >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discord\Cache" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discord\Code Cache" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discord\GPUCache" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discord\Crashpad" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discord\VideoDecodeStats" >NUL 2>&1
  del "%USERPROFILE%\AppData\Local\discord\*.log" /s /q >NUL 2>&1
  :: discord canary
  taskkill /IM "DiscordCanary.exe" /F >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discordcanary\Cache" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discordcanary\Code Cache" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discordcanary\GPUCache" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discordcanary\Crashpad" >NUL 2>&1
  rd /s /q "%USERPROFILE%\AppData\Roaming\discordcanary\VideoDecodeStats" >NUL 2>&1
  del "%USERPROFILE%\AppData\Local\DiscordCanary\*.log" /s /q >NUL 2>&1
  echo.                                      
  echo                                      Successfully
  echo.   
  timeout 1 >NUL 2>&1
  goto Home
</clearing>


<overlay>
  :overlay
  cls
  title Remove overlay
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_rpc" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_rpc" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_rpc" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_rpc" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_overlay2" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_overlay2" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_overlay2" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_overlay2" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_rpc" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_overlay2" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_rpc-1" >NUL 2>&1 
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_overlay2-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_rpc-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_overlay2-1" >NUL 2>&1
  echo.                                      
  echo                                      Successfully
  echo.   
  timeout 1 >NUL 2>&1
  goto Home
</overlay>

<deleting>
  :deleting
  cls
  title Deleting language packs
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\am.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ar.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\bg.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\bn.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ca.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\cs.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\da.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\de.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\el.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\en-GB.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\es.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\es-419.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\et.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fa.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fi.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fil.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\gu.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\he.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\hi.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\hr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\hu.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\id.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\it.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ja.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\kn.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ko.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\lt.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\lv.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ml.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\mr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ms.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\nb.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\nl.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\pl.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\pt-br.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\pt-pt.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ro.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ru.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sk.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sl.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sv.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sw.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ta.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\te.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\th.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\tr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\uk.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\vi.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\zh-cn.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\zh-tw.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\am.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ar.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\bg.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\bn.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ca.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\cs.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\da.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\de.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\el.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\en-GB.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\es.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\es-419.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\et.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fa.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fi.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fil.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\gu.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\he.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hi.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hu.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\id.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\it.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ja.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\kn.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ko.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\lt.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\lv.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ml.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\mr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ms.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\nb.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\nl.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pl.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pt-br.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pt-pt.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ro.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ru.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sk.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sl.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sv.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sw.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ta.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\te.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\th.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\tr.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\uk.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\vi.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\zh-cn.pak" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\zh-tw.pak" /F /Q >NUL 2>&1
  echo.                                      
  echo                                      Successfully
  echo.   
  timeout 1 >NUL 2>&1
  goto Home
</deleting>

<debloat>
  :debloat
  cls
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q >NUL 2>&1 
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9001\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9001\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9002\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q >NUL 2>&1
  DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9002\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_cloudsync" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_cloudsync" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_cloudsync" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_cloudsync" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_dispatch" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_dispatch" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_dispatch" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_dispatch" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_erlpack" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_erlpack" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_erlpack" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_erlpack" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_game_utils" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_game_utils" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_game_utils" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_media" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_media" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_media" >NUL 2>&1 
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_media" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_spellcheck" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_spellcheck" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_spellcheck" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_spellcheck" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_krisp" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_krisp" >NUL 2>&1
  rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_krisp" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_cloudsync" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_dispatch" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_erlpack" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_game_utils" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_media" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_spellcheck" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_krisp" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_cloudsync-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_dispatch-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_erlpack-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_game_utils-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_media-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_spellcheck-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_krisp-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_cloudsync-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_dispatch-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_erlpack-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_game_utils-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_media-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_spellcheck-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_spellcheck-2" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_hook-1" >NUL 2>&1
  rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\swiftshader" >NUL 2>&1
  echo.                                      
  echo                                      Successfully 
  echo.   
  timeout 5 
  goto Home
</debloat>

:riceoslogo
echo.
echo.
echo %BS%                           $$$$$__$$$$$$__$$$$___$$$$___$$$$__$$$$$__$$$$$_
echo %BS%                           $$__$$___$$___$$_____$$__$$_$$__$$_$$__$$_$$__$$
echo %BS%                           $$__$$___$$____$$$$__$$_____$$__$$_$$$$$__$$__$$
echo %BS%                           $$__$$___$$_______$$_$$__$$_$$__$$_$$__$$_$$__$$
echo %BS%                           $$$$$__$$$$$$__$$$$___$$$$___$$$$__$$__$$_$$$$$_
echo %BS%        
echo.
echo.

