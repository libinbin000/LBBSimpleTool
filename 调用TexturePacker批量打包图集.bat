@REM 2018/11/2 李斌斌

@ECHO OFF
TITLE LIBINBIN

CLS


REM 设置TEXTUREPACKER的路径
SET TEXTUREPACKER=".\TexturePacker.exe"
REM 设置要打包的图片路径
SET INPUT=".\txt"
REM 设置输出路径
SET OUTPUT=".\plist"


ECHO ----------------------------[图集生成工具]----------------------------------------
ECHO [开始生成]
ECHO [TexturePacker 目录] %TEXTUREPACKER%


REM 遍历目录当前目录
setlocal enabledelayedexpansion

REM 拷贝图片
REM FOR /D %%i in (%INPUT%\*) do (
    REM ECHO [LBB的图集快速打包工具] %%i
    REM copy 要增加图片的地址 目标
    REM copy C:\Users\Administrator\Desktop\微信小游戏\dgtimage\dot.png %%i\dot.png
REM )

FOR /D %%i in (%INPUT%\*) do (
    ECHO [打包目录] %%i
    !TEXTUREPACKER!  --size-constraints NPOT --max-size 2048 --data %OUTPUT:~1,-1%\%%~ni.plist --format cocos2d --sheet %OUTPUT:~1,-1%\%%~ni.png %%i
)


REM PAUSE