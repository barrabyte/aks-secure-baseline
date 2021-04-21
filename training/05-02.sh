RESOURCEID_VNET_CLUSTERSPOKE=$(az deployment group show -g $spokes -n spoke-BU0001A0008 --query properties.outputs.clusterVnetResourceId.value -o tsv)


