@echo off
setlocal enabledelayedexpansion

rem Путь к рабочему столу
set "desktop=%USERPROFILE%\Desktop"

rem Список содержимого для файлов
set "content[0]=Google"
set "content[1]=Yandex"
set "content[2]=Edge"
set "content[3]=DuckDuckGo"

rem Создание 22 файлов
for /L %%i in (1,1,22) do (
    rem Вычисление индекса для чередования содержимого
    set /a index=%%i %% 4
    rem Создание файла с содержимым
    echo !content[%index%]! > "%desktop%\browser.data.%%i"
)

echo 22 файла успешно созданы на рабочем столе.
pause