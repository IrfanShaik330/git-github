# PowerShell build script for Windows
Write-Host "Starting .NET build..."

# Replace this path with your actual .csproj file path
dotnet build GIT PRACT\GIT PRACT.csproj

# Check if the build failed
if ($LASTEXITCODE -ne 0) {
    Write-Error "Build failed with exit code $LASTEXITCODE"
    exit $LASTEXITCODE
}

Write-Host "Build completed successfully."
