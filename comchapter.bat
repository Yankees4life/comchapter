@echo off
set file=%1
REM Finding commercials
comskip --ini=comskip.ini %file%
REM Adding chapters to file
ffmpeg -i %file%.ts -i %file%.ffmeta -map_metadata 1 -c copy edit.mp4
rename edit.mp4 %file%.mp4
REM Cleanup input files
del /f %file%.txt
del /f %file%.log
del /f %file%.ffmeta
del /f %file%.ts