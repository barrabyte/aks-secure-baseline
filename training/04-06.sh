RESOURCEID_SUBNET_NODEPOOLS=$(az deployment group show -g $spokes -n spoke-BU0001A0008 --query properties.outputs.nodepoolSubnetResourceIds.value -o tsv)

# [This takes about three minutes to run.]
az deployment group create -g $hubs -f networking/hub-regionA.json -p location=eastus2 nodepoolSubnetResourceIds="['${RESOURCEID_SUBNET_NODEPOOLS}']"
