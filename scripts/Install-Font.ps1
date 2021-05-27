<#
? Additional resources
* Nerd Fonts Homepage: https://www.nerdfonts.com/font-downloads

* Installing the fonts: https://powers-hell.com/2020/06/09/installing-fonts-with-powershell-intune/
* https://superuser.com/questions/813039/what-is-the-purpose-of-the-fonts-key-in-the-registry
* https://gist.github.com/anthonyeden/0088b07de8951403a643a8485af2709b
* https://powers-hell.com/2020/06/09/installing-fonts-with-powershell-intune/
* https://stackoverflow.com/questions/24987542/is-there-a-link-to-github-for-downloading-a-file-in-the-latest-release-of-a-repo/54836319#54836319
#>

# Downloads the zipped file
$Uri = "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip"
$OutputFilename = "$ENV:USERPROFILE\Downloads\FiraCode.zip"
Write-Host "Downloading the zipped file..." -ForegroundColor Magenta
Invoke-WebRequest -Uri $Uri -OutFile $OutputFilename

# Extract & then deletes the zipped file
$DestinationPath = "$ENV:USERPROFILE\Downloads\FiraCode"
Expand-Archive -Path $OutputFilename -DestinationPath $DestinationPath -Force
Remove-Item $OutputFilename
Write-Host "Redundant zipped file removed..." -ForegroundColor DarkCyan

# Can't install fonts automatically yet. There's always some awkward error involved.
# Copy "Fira Code Bold Nerd Font Complete Windows Compatible.tff" to "$ENV:WINDIR\Fonts"

# Make Registry entry at "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts"
