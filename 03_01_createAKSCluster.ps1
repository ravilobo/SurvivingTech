az login 

# wait for the above step to complete. 
az account set -s $AzureSub
az group create --name $RG --location $Region

get-date 

# if AKS creation fails, use the below command to get the supported versions. 
# az aks get-versions --location eastus2
az aks create `
 --resource-group $RG `
 --generate-ssh-keys `
 --name $AKS `
 --kubernetes-version $KubernetesVersion `
 --node-vm-size Standard_E8s_v3 `
 --node-count 2

# since we can't access the control plane node in AKS, 
# use the below command to fetch credentials and save to local user folder 
az aks get-credentials --resource-group $RG --name $AKS --overwrite-existing
get-date 

