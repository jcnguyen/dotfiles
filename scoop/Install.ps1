#Requires -Version 5

Write-Host "installing scoop..."
if (Get-Command scoop -ErrorAction SilentlyContinue)
{
    Write-Host "scoop is already installed"
} else {
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

Write-Host "adding buckets..."
scoop bucket add extras
scoop bucket add nerd-fonts

Write-Host "installing font..."
scoop install firacode

Write-Host "installing utilities..."
scoop install cmder-full git git-lfs putty openssl make

Write-Host "installing Protobuf utilities..."
scoop install protobuf protoc-gen-grpc-web

Write-Host "installing Java utilities..."
scoop install maven

Write-Host "installing Nodejs..."
scoop install nodejs
