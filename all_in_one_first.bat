%windir%\System32\cacls.exe C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl /d SYSTEM
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:SMB1Protocol
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:TelnetClient
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:Internet-Explorer-Optional-amd64
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:Internet-Explorer-Optional-x86
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:MediaCenter
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:SmbDirect
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:WindowsMediaPlayer
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:MediaPlayback
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:WCF-TCP-PortSharing45
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:WCF-Services45
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:Printing-Foundation-InternetPrinting-Client
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:Windows-Identity-Foundation
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:FaxServicesClientPackage
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:Printing-Foundation-Features
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:WorkFolders-Client
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:MSRDC-Infrastructure
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:SearchEngine-Client-Package
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:Printing-XPSServices-Features
%windir%\System32\dism.exe /online /norestart /Disable-feature /featurename:NetFx4-AdvSrvs
%windir%\System32\bcdedit.exe /set {default} bootmenupolicy legacy
%windir%\System32\bcdedit.exe /set {bootmgr} displaybootmenu yes
%windir%\System32\bcdedit.exe /timeout 3
%windir%\System32\setx.exe GPU_MAX_ALLOC_PERCENT 99
%windir%\System32\setx.exe GPU_SINGLE_ALLOC_PERCENT 90
%windir%\System32\setx.exe CPU_MAX_ALLOC_PERCENT 99
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe__ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\upfc.exe__ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\upfc.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe__ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe__ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\HelpPane.exe__ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\HelpPane.exe_ /remove[:g] %Username%
%windir%\System32\takeown.exe /F %windir%\System32\CompatTelRunner.exe_ /A
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe_ /grant[:r] %Username%:(F)
del %windir%\System32\CompatTelRunner.exe_
%windir%\System32\takeown.exe /F %windir%\System32\CompatTelRunner.exe__ /A
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe__ /grant[:r] %Username%:(F)
del %windir%\System32\CompatTelRunner.exe__
%windir%\System32\takeown.exe /F %windir%\System32\upfc.exe_ /A
%windir%\System32\icacls.exe %windir%\System32\upfc.exe_ /grant[:r] %Username%:(F)
del %windir%\System32\upfc.exe_
%windir%\System32\takeown.exe /F %windir%\System32\upfc.exe__ /A
%windir%\System32\icacls.exe %windir%\System32\upfc.exe__ /grant[:r] %Username%:(F)
del %windir%\System32\upfc.exe__
%windir%\System32\takeown.exe /F %windir%\System32\GameBarPresenceWriter.exe_ /A
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe_ /grant[:r] %Username%:(F)
del %windir%\System32\GameBarPresenceWriter.exe_
%windir%\System32\takeown.exe /F %windir%\System32\GameBarPresenceWriter.exe__ /A
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe__ /grant[:r] %Username%:(F)
del %windir%\System32\GameBarPresenceWriter.exe__
%windir%\System32\takeown.exe /F %windir%\System32\GamePanel.exe_ /A
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe_ /grant[:r] %Username%:(F)
del %windir%\System32\GamePanel.exe_
%windir%\System32\takeown.exe /F %windir%\System32\GamePanel.exe__ /A
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe__ /grant[:r] %Username%:(F)
del %windir%\System32\GamePanel.exe__
%windir%\System32\takeown.exe /F %windir%\HelpPane.exe_ /A
%windir%\System32\icacls.exe %windir%\HelpPane.exe_ /grant[:r] %Username%:(F)
del %windir%\HelpPane.exe_
%windir%\System32\takeown.exe /F %windir%\HelpPane.exe__ /A
%windir%\System32\icacls.exe %windir%\HelpPane.exe__ /grant[:r] %Username%:(F)
del %windir%\HelpPane.exe__
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\ieinstal.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files\internet explorer\ieinstal.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\ielowutil.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files\internet explorer\ielowutil.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\ExtExport.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files\internet explorer\ExtExport.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\iediagcmd.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files\internet explorer\iediagcmd.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\Internet Explorer\ieinstal.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files (x86)\Internet Explorer\ieinstal.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\Internet Explorer\ielowutil.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files (x86)\Internet Explorer\ielowutil.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\internet explorer\ExtExport.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files (x86)\internet explorer\ExtExport.exe_"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\iediagcmd.exe_" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe_" /grant[:r] %Username%:(F)
del "C:\Program Files (x86)\internet explorer\iediagcmd.exe_"
timeout /t 1 /nobreak > NUL
%windir%\System32\takeown.exe /F %windir%\System32\CompatTelRunner.exe /A
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe /grant[:r] %Username%:(F)
ren %windir%\System32\CompatTelRunner.exe CompatTelRunner.exe_
copy /b NUL %windir%\System32\CompatTelRunner.exe
%windir%\System32\takeown.exe /F %windir%\System32\upfc.exe /A
%windir%\System32\icacls.exe %windir%\System32\upfc.exe /grant[:r] %Username%:(F)
ren %windir%\System32\upfc.exe upfc.exe_
copy /b NUL %windir%\System32\upfc.exe
%windir%\System32\takeown.exe /F %windir%\System32\GameBarPresenceWriter.exe /A
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe /grant[:r] %Username%:(F)
ren %windir%\System32\GameBarPresenceWriter.exe GameBarPresenceWriter.exe_
copy /b NUL %windir%\System32\GameBarPresenceWriter.exe
%windir%\System32\takeown.exe /F %windir%\System32\GamePanel.exe /A
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe /grant[:r] %Username%:(F)
ren %windir%\System32\GamePanel.exe GamePanel.exe_
copy /b NUL %windir%\System32\GamePanel.exe
%windir%\System32\takeown.exe /F %windir%\HelpPane.exe /A
%windir%\System32\icacls.exe %windir%\HelpPane.exe /grant[:r] %Username%:(F)
ren %windir%\HelpPane.exe HelpPane.exe_
copy /b NUL %windir%\HelpPane.exe
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\ieinstal.exe" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files\internet explorer\ieinstal.exe" ieinstal.exe_
copy /b NUL "C:\Program Files\internet explorer\ieinstal.exe"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\ielowutil.exe" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files\internet explorer\ielowutil.exe" ielowutil.exe_
copy /b NUL "C:\Program Files\internet explorer\ielowutil.exe"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\ExtExport.exe" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files\internet explorer\ExtExport.exe" ExtExport.exe_
copy /b NUL "C:\Program Files\internet explorer\ExtExport.exe"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\Internet Explorer\ieinstal.exe" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files (x86)\Internet Explorer\ieinstal.exe" ieinstal.exe_
copy /b NUL "C:\Program Files (x86)\Internet Explorer\ieinstal.exe"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\Internet Explorer\ielowutil.exe" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files (x86)\Internet Explorer\ielowutil.exe" ielowutil.exe_
copy /b NUL "C:\Program Files (x86)\Internet Explorer\ielowutil.exe"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\internet explorer\ExtExport.exe" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files (x86)\internet explorer\ExtExport.exe" ExtExport.exe_
copy /b NUL "C:\Program Files (x86)\internet explorer\ExtExport.exe"
%windir%\System32\takeown.exe /F "C:\Program Files\internet explorer\iediagcmd.exe" /A
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files\internet explorer\iediagcmd.exe" iediagcmd.exe_
copy /b NUL "C:\Program Files\internet explorer\iediagcmd.exe"
%windir%\System32\takeown.exe /F "C:\Program Files (x86)\internet explorer\iediagcmd.exe" /A
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe" /grant[:r] %Username%:(F)
ren "C:\Program Files (x86)\internet explorer\iediagcmd.exe" iediagcmd.exe_
copy /b NUL "C:\Program Files (x86)\internet explorer\iediagcmd.exe"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe_" /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\upfc.exe /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\upfc.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\HelpPane.exe /remove[:g] %Username%
%windir%\System32\icacls.exe %windir%\HelpPane.exe_ /remove[:g] %Username%
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ieinstal.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ielowutil.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\ExtExport.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files\internet explorer\iediagcmd.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ieinstal.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\Internet Explorer\ielowutil.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\ExtExport.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe "C:\Program Files (x86)\internet explorer\iediagcmd.exe_" /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\CompatTelRunner.exe_ /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\upfc.exe /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\upfc.exe_ /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\GameBarPresenceWriter.exe_ /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\System32\GamePanel.exe_ /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\HelpPane.exe /grant[:r] %Username%:"(OI)(CI)RX"
%windir%\System32\icacls.exe %windir%\HelpPane.exe_ /grant[:r] %Username%:"(OI)(CI)RX"
ren %UserProfile%\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml --DefaultLayouts.---
ren C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml --DefaultLayouts.---
pause
