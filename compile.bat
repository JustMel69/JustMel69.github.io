@ECHO OFF
SETLOCAL
CALL :GenerateNoTOC index.md , index.html , index.css
CALL :Generate nora.md , nora.html , index.css
CALL :Generate nogine.md , nogine.html , index.css
CALL :Generate explorations.md , explorations.html , index.css
CALL :Generate tutorials.md , tutorials.html , index.css
CALL :Generate games.md , games.html , index.css

CALL :Generate nora/why-nora.md , nora/why-nora.html , ../index.css

EXIT /B %ERRORLEVEL%

:Generate
pandoc --toc -s --css reset.css --css %~3 -i %~1 -o %~2 --template=template.html
EXIT /B 0

:GenerateNoTOC
pandoc -s --css reset.css --css %~3 -i %~1 -o %~2 --template=template.html
EXIT /B 0