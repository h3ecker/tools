@echo off
setlocal enabledelayedexpansion

rem Nom du "brand"
set "brand=Dôlce O Service"

rem Chemin du répertoire de destination
set "destination=C:\Chemin\vers\votre\dossier"

rem Créer le répertoire
md "!destination!\!brand!"

if exist "!destination!\!brand!\" (
    echo Répertoire pour "!brand!" créé avec succès.
) else (
    echo Échec de la création du répertoire.
)

endlocal
