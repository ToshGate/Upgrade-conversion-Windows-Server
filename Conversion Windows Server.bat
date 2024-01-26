@echo off
setlocal enabledelayedexpansion

echo.
echo Choose the desired activation:
echo 1. Windows Server 2022
echo 2. Windows Server 2019
echo 3. Windows Server 2016
echo.

set /p choice=Enter choice (1, 2, or 3): 

if "%choice%"=="1" (
    call :sub_menu_2022
) else if "%choice%"=="2" (
    call :sub_menu_2019
) else if "%choice%"=="3" (
    call :sub_menu_2016
) else (
    echo Invalid choice. Exiting.
    timeout /t 3
	exit
)

endlocal
exit

:sub_menu_2022
echo Sub-menu for STD:
echo.
echo 1. Windows Server 2022 Datacenter
echo 2. Windows Server 2022 Datacenter Azure Edition
echo 3. Windows Server 2022 Standard
echo.

set /p sub_choice=Enter sub-menu choice (1, 2, or 3): 

if "%sub_choice%"=="1" (
    set activation=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
	set activationchoice=ServerDatacenter
) else if "%sub_choice%"=="2" (
    set activation=NTBV8-9K7Q8-V27C6-M2BTV-KHMXV
	set activationchoice=ServerAzure
) else if "%sub_choice%"=="3" (
    set activation=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
	set activationchoice=ServerStandard
) else (
    echo Invalid choice. Exiting.
    timeout /t 3
	exit
)

echo.
call :activatewin

:sub_menu_2019
echo Sub-menu for STD:
echo 1. Windows Server 2019 Datacenter
echo 2. Windows Server 2019 Standard
echo 3. Windows Server 2019 Essentials

set /p sub_choice=Enter sub-menu choice (1, 2, or 3): 

if "%sub_choice%"=="1" (
    set activation=WMDGN-G9PQG-XVVXX-R3X43-63DFG
	set activationchoice=ServerDatacenter
) else if "%sub_choice%"=="2" (
    set activation=N69G4-B89J2-4G8F4-WWYCC-J464C
	set activationchoice=ServerStandard
) else if "%sub_choice%"=="3" (
    set activation=WVDHN-86M7X-466P6-VHXV7-YY726
	set activationchoice=ServerEssentials
) else (
    echo Invalid choice. Exiting.
    timeout /t 3
	exit
)
echo.
call :activatewin

:sub_menu_2016
echo Sub-menu for STD:
echo 1. Windows Server 2016 Datacenter
echo 2. Windows Server 2016 Standard
echo 3. Windows Server 2016 Essentials

set /p sub_choice=Enter sub-menu choice (1, 2, or 3): 

if "%sub_choice%"=="1" (
    set activation=CB7KF-BWN84-R7R2Y-793K2-8XDDG
	set activationchoice=ServerDatacenter
) else if "%sub_choice%"=="2" (
    set activation=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
	set activationchoice=ServerStandard
) else if "%sub_choice%"=="3" (
    set activation=JCKRF-N37P4-C2D82-9YXRT-4M63B
	set activationchoice=ServerEssentials
) else (
    echo Invalid choice. Exiting.
    timeout /t 3
	exit
)
echo.
call :activatewin

:activatewin
@echo on
::DISM /online /Set-Edition:%activationchoice% /GetEula:C:\license.rtf
::DISM /online /Set-Edition:%activationchoice% /ProductKey: %activation% /AcceptEula
pause
exit
