FROM python

# Copie les fichier de l'app
WORKDIR /app
COPY . /app/

# Installation des dépendances
RUN pip install fastapi uvicorn


# Commande pour exécuter l'application
CMD ["uvicorn", "fastAPI:app", "--host", "0.0.0.0", "--port", "8000"]
