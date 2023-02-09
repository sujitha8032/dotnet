Write-Host "Running AfterInstall script..."

# Copy the new application files
Write-Host "Copying new application files..."
$source = "C:\Program Files\Amazon\CodeDeploy\new\myapp"
$destination = "C:\inetpub\wwwroot\myapp"
Copy-Item -Path $source -Destination $destination -Recurse

# Remove the installation directory
Write-Host "Removing installation directory..."
Remove-Item -Path "C:\Program Files\Amazon\CodeDeploy\new\myapp" -Recurse -Force
