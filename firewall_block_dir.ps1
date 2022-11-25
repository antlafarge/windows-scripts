# Block all exes in a directory on the windows firewall
# Usage : .\firewall_block_dir.ps1 "<directory>"
# Example : .\firewall_block_dir.ps1 "C:\Program Files\Program Dir"

$currentDirectory=$PSScriptRoot
$dir = $args[0]
cd "$dir"
$appli = ls **\**.exe
echo "$appli"
foreach ($app in $appli) 
{
    $name = $app.name
    echo "Block app in firewall : $app.name (path=$app.fullpath)"
	netsh adv firewall add rule name=$name dir=out action=block program=$app.fullpath
}
cd $currentDirectory
