$RegPath = "Registry::HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Servers\"
$QueryPath = dir $RegPath -Name
foreach($Name in $QueryPath)
{   
    Try  
    {  
        $User = (Get-ItemProperty -Path $RegPath$Name).UsernameHint
            Write-Host "Server:"$Name
            Write-Host "User:"$User"`n"
        }
        Catch  
        {
        Write-Host "No RDP Connections History"
        }
}