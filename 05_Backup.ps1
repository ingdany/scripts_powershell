$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path './app' -CompressionLevel 'Fastest' -DestinationPath "./backup-$date"
Write-Host "Created backup at $('./backup-' + $date + '.zip')"