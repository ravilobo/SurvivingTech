
az login 

az account set -s $AzureSub
az aks delete --name $AKS --resource-group $RG --yes -y
az group delete --name $RG --yes -y

