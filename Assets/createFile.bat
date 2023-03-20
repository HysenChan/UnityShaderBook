@echo off

set /p fileName=
md Editor\%fileName%
md Materials\%fileName%
md Scenes\%fileName%
md Scripts\%fileName%
md Shaders\%fileName%
