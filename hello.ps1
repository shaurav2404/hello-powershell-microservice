Write-Host "Starting ECS container..."

while ($true) {

    try {
        # Get the public IP seen by the container
        $ip = Invoke-RestMethod -Uri "https://api.ipify.org"

        # Print the IP to logs
        Write-Host "Container Public IP: $ip"

        # Print timestamp
        Write-Host "Time: $(Get-Date)"

        Write-Host "-----------------------------------"
    }
    catch {
        Write-Host "Failed to fetch public IP"
        Write-Host $_
    }

    # Wait 10 seconds before checking again
    Start-Sleep -Seconds 10
}