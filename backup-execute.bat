sqlcmd -S [sql-instance] -i [path]
cd "path"
::compress file with 7zip
for %%i in (*.bak) do "C:\Program Files\7-Zip\7z.exe" a -t7z %%i.7z %%i -sdel
::copy file to another location
Forfiles /p "path" /s /m *.7z /c "cmd /c xCOPY /y /f @path path"
::delete copied file (.bak and .7z)
del "path\*.ba"
del "path\*.7z"