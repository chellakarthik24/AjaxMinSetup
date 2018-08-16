set msiPath=C:\Users\c-kchella\Desktop\AjaxMinSetup.msi
echo NODE_NAME: %NODE_NAME%
echo computername: %computername%
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%a-%%b-%%c)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
echo %mydate%_%mytime%
mkdir "%workspace%\%NODE_NAME%_%mydate%_%mytime%"
echo "%workspace%\%NODE_NAME%_%mydate%_%mytime%\msilog.log"
msiexec.exe /i "%msiPath%" /QN /L*V "%workspace%\%NODE_NAME%_%mydate%_%mytime%\msilog.log"
exit