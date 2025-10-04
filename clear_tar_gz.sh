#!/bin/bash

# 删除当前目录及子目录下的所有.tar.gz文件
find . -type f -name "*.tar.gz" -delete

echo "已删除所有 .tar.gz 文件"
