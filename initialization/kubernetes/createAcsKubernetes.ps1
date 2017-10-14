$resourceGroupName = "workshopAzureKubernetes"
$kubernetesName = "myWorkshopKub"
az login
az group create --name $resourceGroupName --location westeurope
az acs create --orchestrator-type=kubernetes --resource-group $resourceGroupName --name=$kubernetesName --generate-ssh-keys 
az acs kubernetes install-cli 
az acs kubernetes get-credentials --resource-group=$resourceGroupName --name=$kubernetesName

#Install web UI if not present
#kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml