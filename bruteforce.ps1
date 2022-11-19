$passwords = Get-Content ".\10000passwords.txt"
$7ZipPath = "C:\Program Files\7-Zip\7z.exe"
$zipFile = "zipFile.zip"
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
        break
    }
}
pause
