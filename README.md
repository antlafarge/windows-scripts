# windows-scripts

Useful scripts for Windows

## Get actual execution policies

```ps1
Get-ExecutionPolicy -List
```

## Allow execution of scripts on Windows

```ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

## If the script can't be executed

- Set the policy to Unrestricted :
```ps1
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```
- Execute your script.
- Then reset the policy to RemoteSigned :
```ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```
