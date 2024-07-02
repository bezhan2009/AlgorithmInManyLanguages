@echo off
setlocal enabledelayedexpansion

rem Bubble sort implementation in Batch script
set "arr=64 34 25 12 22 11 90"
set "n=7"

for /l %%i in (0,1,%n%) do (
    for /l %%j in (0,1,!n!-%%i-1) do (
        for /f "tokens=%%j delims= " %%a in ("!arr!") do set "current=%%a"
        for /f "tokens=%%j delims= " %%a in ("!arr!") do set "next=%%a"
        if !current! gtr !next! (
            for /l %%k in (0,1,%%j-1) do (
                for /f "tokens=%%k delims= " %%a in ("!arr!") do set "temp=%%a"
                for /f "tokens=%%k delims= " %%a in ("!arr!") do set "arr=!arr:%%a=%%b!"
                for /f "tokens=%%j delims= " %%a in ("!arr!") do set "arr=!arr:%%a=!temp!"
            )
        )
    )
)

echo Sorted array: %arr%
