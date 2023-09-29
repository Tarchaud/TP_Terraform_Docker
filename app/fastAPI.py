from fastapi import FastAPI

# Créez une instance FastAPI
app = FastAPI()

# Définissez une route avec une méthode GET
@app.get("/")
def read_root():
    return {"message": "Hello, World!"}