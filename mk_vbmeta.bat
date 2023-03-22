@echo off
setlocal enabledelayedexpansion

FOR /r %%i in (*.mp4) do (
    set var=%%i
    set var=!var:%cd%\=!
    echo !var!
    for /f "tokens=1,2,3,4,* delims=." %%a in ("!var!") do (
        set tvshow_title=%%a
        set season=%%b
        set season=!season:~1!
        set episode=%%c
        set episode=!episode:~1!
        set episode_title=%%d
        echo tvshow_title=!tvshow_title! season=!season! episode=!episode! episode_title=!episode_title!
        mk_vsmeta.exe -s !season! -e !episode! -t !tvshow_title! -n !episode_title! !var!.vsmeta
    )
)

pause