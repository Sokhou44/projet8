# Ce script convertit tous les fichiers JPG en fichiers WEBP dans le dossier actuel
# avec une qualité de 85.

# Vérifie si ImageMagick est installé
if ! command -v magick &> /dev/null; then
    echo "ImageMagick n'est pas installé. Installez-le d'abord avec 'sudo apt install imagemagick'."
    exit 1
fi

# Boucle sur chaque fichier .png dans le dossier courant
for image in *.png; do
    # Vérifie si le fichier existe
    if [[ -f "$image" ]]; then
        # Convertit le fichier en .webp avec une qualité de 85
        magick convert "$image" -quality 85 "${image%.png}.webp"
        echo "Converti : $image -> ${image%.png}.w