Write-Host "Running BeforeInstall script..."

# Stop the IIS service
Write-Host "Stopping IIS service..."
Stop-Service W3SVC

# Backup existing application files
Write-Host "Backing up existing application files..."
$source = "C:\inetpub\wwwroot\myapp"
$destination = "C:\backup\myapp"
Copy-Item -Path $source -Destination $destination -Recurse
