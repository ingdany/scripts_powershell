Try {
    If ($Path -eq './forbidden') {
        Throw "Path not allowed"
    }
    # Carry on.
    # Get-Content 'newfile.txt' -ErrorAction Stop
} Catch {
    Write-Error "$($_.exception.message)" # Path not allowed.
}