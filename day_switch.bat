@echo off
for /F %%i in (.env) do set %%i
set PATH=%PATH%;%ADBPATH%

:a
adb shell am start -a android.settings.SETTINGS
adb shell input tap  712 555
adb shell input tap  700 780
adb shell input touchscreen swipe 250 1760 250 1570
adb shell input tap  800 2200
adb shell input keyevent KEYCODE_APP_SWITCH
adb shell input tap 800 1500
timeout 3
adb shell input tap 600 1460
goto a