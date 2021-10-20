$exists = Test-Path -Path $env:LOCALAPPDATA\FCC\fcc_uninstaller.exe -PathType Leaf
if ($exists -eq $true){
    Write-Output "FCC is installed, I will now remove it"
    $env:LOCALAPPDATA\FCC\fcc_uninstaller.exe /S /currentuser
    Remove-Item $env:LOCALAPPDATA\FCC -Force -Recurse
    }
    else {
    Write-Output "Doesn't exist moving on...."
    }