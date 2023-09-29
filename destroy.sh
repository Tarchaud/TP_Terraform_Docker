#!/bin/bash

# Détruisez l'infrastructure Terraform
cd infra/
terraform destroy -auto-approve 

# Revenez au répertoire précédent
cd ..
