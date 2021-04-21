az login -t 49c92fe1-7c5d-4959-839a-0a38a6c52f93 -i --allow-no-subscriptions
TENANTID_K8SRBAC=$(az account show --query tenantId -o tsv)
echo $TENANTID_AZURERBAC
echo $TENANTID_K8SRBAC
