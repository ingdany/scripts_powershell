Try {
    Get-Content './file/newfile.txt' -ErrorAction Stop
} 
# Catch {
#     Write-Error "File can't be found"
# }
Catch [System.IO.IOException] {
    Write-Host "Something IO went wrong: $($_.exception.message)"
}  Catch {
    Write-Error "Something else went wrong: $($_.exception.message)"
}