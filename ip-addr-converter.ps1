$filePath = Read-Host -Prompt 'Input the absolute file path of the IP addresses you wish to convert'
$newFileToCreate = Read-Host -Prompt 'Input the absolute file path of the new file in which you wish to store the new IPs'

$ips = Get-Content -Path $filePath
$subIp = "10."
for ($i=0; $i -lt $ips.Length; $i++)
{
    $ips[$i] = $subIp + $ips[$i].Substring(4)
    Add-Content -Path $newFileToCreate -Value $ips[$i]
}

