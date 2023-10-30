@echo off
REM Script batch avec un mot-clé
set brand="GUYANAISE DES EAUX"
echo Recherche du mot-clé '%brand%' dans un fichier de données...

REM Simulation de la recherche du mot-clé dans un fichier de données
set dataFile=data.txt
findstr /C:"%brand%" %dataFile% > nul
if %errorlevel%==0 (
    echo Le mot-clé '%brand%' a été trouvé dans le fichier de données.
) else (
    echo Le mot-clé '%brand%' n'a pas été trouvé dans le fichier de données.
)
