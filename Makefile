# Variables
TITLE = "Projet Guessing Game"
DATE = $(shell date '+%Y-%m-%d %H:%M:%S')
LINES = $(shell wc -l < guessinggame.sh)
README = README.md

# Cible par défaut
all: $(README)

# Génération du fichier README.md
$(README): guessinggame.sh
	echo "# $(TITLE)" > $(README)
	echo "" >> $(README)
	echo "Date et heure d'exécution : $(DATE)" >> $(README)
	echo "" >> $(README)
	echo "Nombre de lignes de code dans guessinggame.sh : $(LINES)" >> $(README)
	echo "" >> $(README)
	echo "[GitHub Pages](https://<VOTRE-UTILISATEUR>.github.io/<VOTRE-REPO>/)" >> $(README)

# Nettoyage
clean:
	rm -f $(README)
