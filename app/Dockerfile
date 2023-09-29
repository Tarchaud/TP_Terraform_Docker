FROM python:3.11

# Copie les fichier de l'app
WORKDIR /app
COPY . /app/

# Installation des dépendances
RUN pip install fastapi uvicorn

# Exposez le port sur lequel l'application FastAPI écoute
EXPOSE 8000

# Commande pour exécuter l'application
CMD ["uvicorn", "fastAPI:app", "--host", "0.0.0.0", "--port", "8000"]
