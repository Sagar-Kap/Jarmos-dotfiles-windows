<#
This script is for downloading the fonts & installing them.

To conform with with proper coding standards & conventions, following resources might prove useful.
https://techdocs.ed-fi.org/display/ETKB/PowerShell+Coding+Standards
https://poshcode.gitbook.io/powershell-practice-and-style/style-guide/readability

? Additional resources
* Nerd Fonts Homepage: https://www.nerdfonts.com/font-downloads

* Installing the fonts: https://powers-hell.com/2020/06/09/installing-fonts-with-powershell-intune/
* https://superuser.com/questions/813039/what-is-the-purpose-of-the-fonts-key-in-the-registry
* https://gist.github.com/anthonyeden/0088b07de8951403a643a8485af2709b
* https://powers-hell.com/2020/06/09/installing-fonts-with-powershell-intune/
* https://stackoverflow.com/questions/24987542/is-there-a-link-to-github-for-downloading-a-file-in-the-latest-release-of-a-repo/54836319#54836319

Specific to this script, it downloads the FiraCode Nerd Font available at: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip.
For now it's URI is hardcoded but it might be advisable to dynamically download the latest version as & when required.

? The Idea Behind the Script:

* -> Downloads the zipped file the extracts the contents locally.
* -> Filter out files based on these conditions:
*        => Are .ttf files
*        => Is Windows Compatible, Mono
*        => Are Bold, Light, Medium & Regular
* -> Copy the fonts into "C:\Windows\Fonts"
* -> Make a Registry entry at "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts"
* -> Then delete the extracted files as well as the zipped file.

TODO:
    ? Copy only the relevant fonts to the C:\Windows\Fonts folder as well as the Registry.
    ? Add Progress Bar while downloading the zipped file.
    ? Use variables & Environment variables instead of hard coding. For e.g the $output variable.
    ? Refactor code into proper functions & what not. It should confer to good coding practices & best practices.
#>
# Following URL might be more apt:
# https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Bold/complete/Fira%20Code%20Bold%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf

$PatchedFont = "FiraCode"
$Uri = "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$PatchedFont.zip"
$OutputFilename = "$ENV:USERPROFILE\Downloads\$PatchedFont.zip"

# Downloads the zipped file
Write-Host "Downloading the zipped file..." -ForegroundColor Magenta
Invoke-WebRequest -Uri $Uri -OutFile $OutputFilename

# Extract & then deletes the zipped file
Write-Host "Extracting the zipped file..."
Expand-Archive -Path $output -DestinationPath "C:\Users\Space\Downloads\FiraCode" -Force
Write-Host "Extraction complete..."
Write-Host "Deleting the redundant zipped file..."
Remove-Item $output
Write-Host "Redundant zipped file removed..."
