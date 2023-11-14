# Script PowerShell pour créer un dossier et un fichier avec un nom de "brand"
$brand = "Green landfill"
$baseDirectory = "C:\Chemin\vers\votre\dossier"
$folderName = $brand
$fileName = "$brand.txt"
$folderPath = Join-Path -Path $baseDirectory -ChildPath $folderName
$filePath = Join-Path -Path $folderPath -ChildPath $fileName

# Création du dossier
New-Item -Path $folderPath -ItemType Directory

# Création du fichier texte
"Contenu du fichier de $brand" | Set-Content -Path $filePath

Write-Host "Dossier et fichier créés pour '$brand'."

# Vérification du dossier et du fichier créés
if (Test-Path $folderPath) {
    Write-Host "Le dossier '$folderName' a été créé avec succès."
    if (Test-Path $filePath) {
        Write-Host "Le fichier '$fileName' a été créé avec succès."
    } else {
        Write-Host "Échec de la création du fichier."
    }
} else {
    Write-Host "Échec de la création du dossier."
}
