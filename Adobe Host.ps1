$hostsPath = "C:\Windows\System32\drivers\etc\hosts"
$blockList = @(
    "0.0.0.0 ic.adobe.io",
    "0.0.0.0 r3zj0yju1q.adobe.io",
    "0.0.0.0 cd536oo20y.adobe.io",
    "0.0.0.0 3ca52znvmj.adobe.io",
    "0.0.0.0 5zgzzv92gn.adobe.io",
    "0.0.0.0 r5hacgq5w6.adobe.io"
)

# Check if the file exists
if (Test-Path $hostsPath) {
    # Read the current content of the hosts file
    $currentContent = Get-Content $hostsPath -Raw

    # Append the blocklist entries if they don't already exist
    foreach ($entry in $blockList) {
        if ($currentContent -notcontains $entry) {
            Add-Content -Path $hostsPath -Value "$entry`n"
        }
    }

    Write-Host "Adobe blocklist added successfully."
} else {
    Write-Host "Hosts file not found. Please make sure you have the correct path."
}
