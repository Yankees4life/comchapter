@echo off
REM Finding commercials
comskip --ini=comskip.ini %1
REM Adding chapters to file
ffmpeg -i %1 -i "%~dpn1.ffmeta" -map_metadata 1 -c copy edit.ts
copy /y edit.ts %1
REM Cleanup input files
del /f "%~dpn1.txt"
del /f "%~dpn1.log"
del /f "%~dpn1.ffmeta"
del /f "%~dpn1.edl"
del /f edit.ts
