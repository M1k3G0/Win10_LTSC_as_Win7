%windir%\System32\netsh.exe advfirewall firewall delete rule all
timeout /t 5 /nobreak > NUL
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\netsh.exe advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound
timeout /t 5 /nobreak > NUL
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
pause
