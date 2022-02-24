rem comentario  echo off = html
@echo off
title - aula 03
mode 60, 30
color 0a
rem comentario :inicio é uma função
:inicio
cls
rem comentario echo. pula uma linha
echo.
rem comentario echo = mostra na tela
echo   ___     ___
echo  (o o)   (o o)
echo (  V  ) (  V  ) 
echo /--m-m- /--m-m-
echo -----_____------
echo ______Tela 02______
echo
echo -----_____------
echo [R] retornar ao menu
echo --------------------
rem comentario "echo." pula a linha
echo.
rem comentario set/p é para a entrada de dados através do teclado, que é o único meio de enteração com os arquivos:.bat
rem comentario "op" é uma variavel
set/p op=Digite sua opcao:

if /i %op% == r (call menu.bat) else (
echo.
echo ---------------
echo opcao invalida!
echo ---------------
pause
goto:inicio)
