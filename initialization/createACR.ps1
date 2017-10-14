$resourceGroupName = "workshopACR"
$acrName = "workshopDeployACR"
#az login
az group create --name $resourceGroupName --location westeurope
az acr create --resource-group $resourceGroupName --name $acrName --sku Basic --admin-enabled true
