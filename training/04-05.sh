RESOURCEID_VNET_HUB=$(az deployment group show -g $hubs -n hub-default --query properties.outputs.hubVnetId.value -o tsv)

# [This takes about five minutes to run.]
az deployment group create -g $spokes -f networking/spoke-BU0001A0008.json -p location=eastus2 hubVnetResourceId="${RESOURCEID_VNET_HUB}"

