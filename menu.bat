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
echo menu principal
echo -----_____------
echo [1] Executar o word
echo [2] executar excel
echo [3]teclado na web
echo [4] navegar na web
echo [5]Windows Explorer
echo [6] calculadora
echo [7] Testar conexao rede
echo [C] chamar tela
echo [E] Encerrar o script
echo --------------------
rem comentario "echo." pula a linha
echo.
rem comentario set/p é para a entrada de dados através do teclado, que é o único meio de enteração com os arquivos:.bat
rem comentario "op" é uma variavel
set/p op=Digite sua opcao:
rem comentario %op% lê a variavel
if %op% == 1 (goto:texto)
if %op% == 2 (goto:planilha)
if %op% == 3 (goto:teclado)
if %op% == 4 (goto:navegador)
if %op% == 5 (goto:microsoft explorer)
if %op% == 6 (goto:calculadora)
if %op% == 7 (goto:teste)
rem comentario "/i" lê em caixa alta e baixa baixa a letra
if /i %op% == c (call tela2.bat)
if /i %op% == e (goto:sair) else (
echo.
echo ---------------
echo opcao invalida!
echo ---------------
pause
goto:inicio)


:texto
start winword.exe
goto:inicio 

:planilha
start excel.exe
goto:inicio 

:teclado
start osk.exe
goto:inicio 

:navegador
echo.
set/p site= digite uma endereço web:
start %site%
goto:inicio

:microsoft explorer
start explorer.exe
goto:inicio

:calculadora
start calc.exe
goto:inicio 

:teste
echo.
set /p conexao= digite o ip da maquina ou endereço web:
rem comentario o "-t" é um termo que lê o tempo de enviar e voltar um arquivo.
ping %conexao% -t 
goto:inicio

:sair
echo.
set /p resp=deseja sair? [S/N]
if /i %resp% == s (exist) else (goto:inicio)