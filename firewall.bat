%windir%\System32\netsh.exe advfirewall firewall delete rule all
timeout /t 1 /nobreak > NUL
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\System\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
timeout /t 1 /nobreak > NUL
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules" /f
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules" /f
timeout /t 1 /nobreak > NUL
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedInterfaces\IfIso" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedInterfaces\IfIso" /f
timeout /t 1 /nobreak > NUL
%windir%\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Configurable\System" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Configurable\System" /f
timeout /t 1 /nobreak > NUL
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
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DefaultInboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DefaultOutboundAction" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DisableNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "AllowLocalIPsecPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "AllowLocalPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "AllowLocalIPsecPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "AllowLocalPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "AllowLocalIPsecPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "AllowLocalPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "AllowLocalIPsecPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "AllowLocalPolicyMerge" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "Shielded" /t REG_DWORD /d "1" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DisableStealthMode" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
%windir%\System32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DisableInboundNotifications" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > NUL
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (HTTP-Out)" dir=out action=allow protocol=TCP remoteport=80
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (HTTPS-Out)" dir=out action=allow protocol=TCP remoteport=443
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (DNS-Out)" dir=out action=allow protocol=UDP remoteport=53 program="%%systemroot%%\system32\svchost.exe" service="dnscache"
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (DHCP-Out)" dir=out action=allow protocol=UDP localport=68 remoteport=67 program="%%systemroot%%\system32\svchost.exe" service="dhcp"
%windir%\System32\netsh.exe advfirewall firewall add rule name="Core Networking (W32Time)" dir=out action=allow protocol=UDP remoteport=123 program="%%systemroot%%\system32\svchost.exe" service="w32time"
pause