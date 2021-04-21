export TENANTDOMAIN_K8SRBAC=$(az ad signed-in-user show --query 'userPrincipalName' -o tsv | cut -d '@' -f 2 | sed 's/\"//')
echo $TENANTDOMAIN_K8SRBAC

# Create Azure AD User for Kubernetes RBAC (if you have created an Azure AD User, pls skip this)
export AADOBJECTNAME_USER_CLUSTERADMIN=bu0001a000800-admin
export AADOBJECTID_USER_CLUSTERADMIN=$(az ad user create --display-name=${AADOBJECTNAME_USER_CLUSTERADMIN} --user-principal-name ${AADOBJECTNAME_USER_CLUSTERADMIN}@${TENANTDOMAIN_K8SRBAC} --force-change-password-next-login --password ChangeMebu0001a0008AdminChangeMe --query objectId -o tsv)
echo $AADOBJECTNAME_USER_CLUSTERADMIN
echo $AADOBJECTID_USER_CLUSTERADMIN

 # Query Azure AD User for Kubernetes RBAC
export AADOBJECTNAME_USER_CLUSTERADMIN=bu0001a000800-admin
export AADOBJECTID_USER_CLUSTERADMIN=$(az ad user show --id ${AADOBJECTNAME_USER_CLUSTERADMIN}@${TENANTDOMAIN_K8SRBAC} --query objectId -o tsv)
echo $AADOBJECTNAME_USER_CLUSTERADMIN
echo $AADOBJECTID_USER_CLUSTERADMIN
