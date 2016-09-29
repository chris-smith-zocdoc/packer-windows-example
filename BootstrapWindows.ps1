<powershell>

$VerbosePreference = "SilentlyContinue"

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Force

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ansible/ansible/ee080eddb5ec6cf716cd843e5c6d0bfe40d6dc35/examples/scripts/ConfigureRemotingForAnsible.ps1" -OutFile "ConfigureRemotingForAnsible.ps1"

./ConfigureRemotingForAnsible.ps1 -SkipNetworkProfileCheck

cmd /C wmic UserAccount set PasswordExpires=False
cmd /C net user Administrator EF942DDC-2292-4FE2-BE92-57BCE3475109

</powershell>
<persist>true</persist>

