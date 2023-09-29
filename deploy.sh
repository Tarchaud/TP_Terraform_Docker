#!/bin/bash

# Initialisez Terraform dans le répertoire "infra/"
cd infra/
terraform init infra/

# Appliquez les changements d'infrastructure
terraform apply -auto-approve

# Revenez au répertoire précédent
cd ..
