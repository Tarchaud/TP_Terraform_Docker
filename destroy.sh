#!/bin/bash

# Destruction de l'infrastructure
MY_PATH=$(pwd)
cd "$MY_PATH/infra/"
terraform destroy -auto-approve 

# Retour à la racine du projet
cd "$MY_PATH"
