# Requires Windows Update Module
Install-Module -Name PSWindowsUpdate -Force -SkipPublisherCheck

# Function to run Windows Update
function Run-WindowsUpdate {
    param (
        [switch]$Restart
    )

    # Import Windows Update Module
    Import-Module PSWindowsUpdate

    # Run Windows Update
    Write-Host "Checking for Windows updates..."
    Get-WindowsUpdate -AcceptAll -AutoReboot:$false

    # Restart if the option is enabled
    if ($Restart) {
        Write-Host "Restarting the computer in 10 seconds..."
        Start-Sleep -Seconds 10
        Restart-Computer -Force
    } else {
        Write-Host "Updates installed. No restart required."
    }
}

# Get user input for restart
$restartChoice = Read-Host "Do you want to restart after updates? (Yes/No)"
if ($restartChoice -eq "Yes") {
    Run-WindowsUpdate -Restart
} else {
    Run-WindowsUpdate
}