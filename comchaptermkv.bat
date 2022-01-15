REM To use this batch script, you have to set your comskip ini to out the mkvtoolnix chapter file by adding "output_mkvtoolnix=1"
comskip --ini=comskip.ini %1
"C:\Program Files\MKVToolNix\mkvmerge.exe" --chapters "%~dpn1.mkvtoolnix.chapters" --output "%~dpn1.mkv" %1
REM cleanup files
del /f "%~dpn1.txt"
del /f "%~dpn1.log"
del /f "%~dpn1.mkvtoolnix.chapters"
del /f "%~dpn1.edl"
del /f %1
