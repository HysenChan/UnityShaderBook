@echo off

set /p fileName=
md Editor\%fileName%
md Materials\%fileName%
md Scenes\%fileName%
md Shaders\%fileName%
