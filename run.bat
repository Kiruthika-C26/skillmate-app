@echo off
setlocal
cd /d "%~dp0"
set "FX=C:\javafx-sdk-25.0.3\lib"
if not exist out mkdir out
javac --module-path "%FX%" --add-modules javafx.controls -d out SkillMate.java
if errorlevel 1 exit /b 1
java -Xms64m -Xmx512m -XX:ActiveProcessorCount=2 -XX:CICompilerCount=2 -XX:TieredStopAtLevel=1 --module-path "%FX%" --add-modules javafx.controls -cp out SkillMate