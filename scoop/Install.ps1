#Requires -Version 5

Write-Host "Installing scoop..."
if (Get-Command scoop -ErrorAction SilentlyContinue)
{
    Write-Host "Scoop is already installed"
} else {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

Write-Host "Installing git..."
scoop install git

Write-Host "Adding buckets..."
scoop bucket add extras
scoop bucket add nerd-fonts

Write-Host "Installing font..."
scoop install firacode

Write-Host "Installing utilities..."
scoop install cmder-full git-lfs putty openssl make

Write-Host "Installing Protobuf utilities..."
scoop install protobuf protoc-gen-grpc-web

Write-Host "Installing Java utilities..."
scoop install maven

Write-Host "Installing Nodejs..."
scoop install nodejs
