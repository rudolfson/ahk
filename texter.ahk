;
; Some hot keys for commonly used text phrases
;
#NoEnv

#g::
Send Sonnige Grüße,{Enter}Lars
return

#!c::
EnvGet, UserProfile, USERPROFILE
Run, "%COMSPEC%" /k cd %UserProfile%
return

#!t::
Run,"C:\Program Files\Git\git-bash.exe" --cd-to-home
return

#!w::
EnvGet, LocalAppData, LOCALAPPDATA
EnvGet, AppData, APPDATA
EnvGet, UserProfile, USERPROFILE
Run,"%LocalAppData%\wsltty\bin\mintty.exe" --WSL="Ubuntu-18.04" --configdir="%AppData%\wsltty" /bin/bash -l -i,%UserProfile%
return

#!p::
EnvGet, UserProfile, USERPROFILE
Run,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe", %UserProfile%
