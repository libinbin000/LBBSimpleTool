@REM 2018/11/2 ����

@ECHO OFF
TITLE LIBINBIN

CLS


REM ����TEXTUREPACKER��·��
SET TEXTUREPACKER=".\TexturePacker.exe"
REM ����Ҫ�����ͼƬ·��
SET INPUT=".\txt"
REM �������·��
SET OUTPUT=".\plist"


ECHO ----------------------------[ͼ�����ɹ���]----------------------------------------
ECHO [��ʼ����]
ECHO [TexturePacker Ŀ¼] %TEXTUREPACKER%


REM ����Ŀ¼��ǰĿ¼
setlocal enabledelayedexpansion

REM ����ͼƬ
REM FOR /D %%i in (%INPUT%\*) do (
    REM ECHO [LBB��ͼ�����ٴ������] %%i
    REM copy Ҫ����ͼƬ�ĵ�ַ Ŀ��
    REM copy C:\Users\Administrator\Desktop\΢��С��Ϸ\dgtimage\dot.png %%i\dot.png
REM )

FOR /D %%i in (%INPUT%\*) do (
    ECHO [���Ŀ¼] %%i
    !TEXTUREPACKER!  --size-constraints NPOT --max-size 2048 --data %OUTPUT:~1,-1%\%%~ni.plist --format cocos2d --sheet %OUTPUT:~1,-1%\%%~ni.png %%i
)


REM PAUSE