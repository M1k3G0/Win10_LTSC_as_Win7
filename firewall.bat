%windir%\System32\netsh.exe advfirewall firewall delete rule all
timeout /t 1 /nobreak > NUL
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\netsh.exe advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound
timeout /t 1 /nobreak > NUL
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
timeout /t 1 /nobreak > NUL
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (HTTP-Out)" dir=out action=allow protocol=TCP remoteport=80
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (HTTPS-Out)" dir=out action=allow protocol=TCP remoteport=443
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (DNS-Out)" dir=out action=allow protocol=UDP remoteport=53 program="%%systemroot%%\system32\svchost.exe" service="dnscache"
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (DHCP-Out)" dir=out action=allow protocol=UDP localport=68 remoteport=67 program="%%systemroot%%\system32\svchost.exe" service="dhcp"
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (W32Time)" dir=out action=allow protocol=UDP remoteport=123 program="%%systemroot%%\system32\svchost.exe" service="w32time"
pause
