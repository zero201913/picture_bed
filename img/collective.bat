@echo off
setlocal enabledelayedexpansion

set "outputFile=output.txt"

if exist %outputFile% del %outputFile%

for %%F in (*) do (
    set "filename=%%~nF"
    set "extension=%%~xF"
    echo !filename!!extension! >> %outputFile%
)

echo "文件名和拓展名已收集并保存到 %outputFile% 文件中。"

endlocal
