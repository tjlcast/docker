# 删除当前目录及子目录下的所有.tar.gz文件
Get-ChildItem -Path . -Recurse -Filter "*.tar.gz" | Remove-Item -Force

Write-Host "已删除所有 .tar.gz 文件" -ForegroundColor Green
