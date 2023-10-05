#!/bin/bash

# Initialisation de Terraform dans le répertoire "infra/"
MY_PATH=$(pwd)
cd "$MY_PATH/infra/"
terraform init 

# Appliquation de l'infra
terraform apply -auto-approve

# Retour à la racine du projet
cd "$MY_PATH"
