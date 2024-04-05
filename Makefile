# Identification des fichiers cibles
all: index.html indices.html rapport.html

# Génération du fichier indices.md contenant tous les indices concaténés
indices.md: indices/*/indice
	cat $^ > indices.md

# Conversion des fichiers markdown en fichiers HTML dans le bon répertoire
index.html: index.md
	pandoc -o $@ $<

indices.html: indices.md
	pandoc -o $@ $<

rapport.html: rapport.md
	pandoc -o $@ $<

