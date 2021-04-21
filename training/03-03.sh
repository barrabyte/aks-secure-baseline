# Create Azure AD Group for Kubernetes RBAC (if you have created an Azure AD group, pls skip this)
export AADOBJECTNAME_GROUP_CLUSTERADMIN=cluster-admins-bu0001a000800
export AADOBJECTID_GROUP_CLUSTERADMIN=$(az ad group create --display-name $AADOBJECTNAME_GROUP_CLUSTERADMIN --mail-nickname $AADOBJECTNAME_GROUP_CLUSTERADMIN --description "Principals in this group are cluster admins in the bu0001a000800 cluster." --query objectId -o tsv)
echo $AADOBJECTNAME_GROUP_CLUSTERADMIN
echo $AADOBJECTID_GROUP_CLUSTERADMIN

# Query Azure AD Group for Kubernetes RBAC
export AADOBJECTNAME_GROUP_CLUSTERADMIN=cluster-admins-bu0001a000800
export AADOBJECTID_GROUP_CLUSTERADMIN=$(az ad group show --group $AADOBJECTNAME_GROUP_CLUSTERADMIN --query objectId --out tsv)
echo $AADOBJECTNAME_GROUP_CLUSTERADMIN
echo $AADOBJECTID_GROUP_CLUSTERADMIN
