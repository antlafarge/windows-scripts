# Usage : .\zipbruteforce.ps1 ".\archive.zip" ".\passwords.txt"

$zipFile = $args[0]
$passwordsFile = $args[1]
$passwords = Get-Content $passwordsFile
$7ZipPath = "C:\Program Files\7-Zip\7z.exe"
foreach ($password in $passwords)
{
    & $7ZipPath "t" $zipFile "-p$password" > $null
    if (-Not $?)
    {
        Write-Host $password " failed"
    }
    else
    {
        Write-Host $password " PASSED!"
        Set-Content -Path .\PASSWORD_FOUND.txt -Value "$password"
        break
    }
}
pause
