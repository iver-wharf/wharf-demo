$RESOURCE_GROUP = "rg-wharf-demo"
$LOCATION = "northeurope"
$CLUSTER_NAME = "aks-wharf-demo"
$DNS_NAME = "wharf-demo.iver.com"

$rg = az group create --name $RESOURCE_GROUP --location $LOCATION

az network dns zone create -g $RESOURCE_GROUP -n $DNS_NAME

$aks = az aks create --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME --node-count 3 --node-vm-size "Standard_B2ms"

# Import Credentials
az aks get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME
