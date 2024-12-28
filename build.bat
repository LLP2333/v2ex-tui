@echo off
REM 设置编码为UTF-8
chcp 65001

echo 开始构建 V2EX TUI 应用...

REM 创建bin目录(如果不存在)
if not exist "bin" mkdir bin

REM 设置GO环境变量
set GOOS=windows
set GOARCH=amd64

REM 执行构建命令
go build -o bin/windows_v2ex_tui.exe ./cmd/v2ex/main.go
