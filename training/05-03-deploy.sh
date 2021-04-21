echo ${aks}
az deployment group create -g ${aks} \
	-f cluster-stamp.json \
	-p targetVnetResourceId=${RESOURCEID_VNET_CLUSTERSPOKE} \
	   clusterAdminAadGroupObjectId=${AADOBJECTID_GROUP_CLUSTERADMIN} \
	   k8sControlPlaneAuthorizationTenantId=${TENANTID_K8SRBAC} \
	   appGatewayListenerCertificate=${APP_GATEWAY_LISTENER_CERTIFICATE} \
	   aksIngressControllerCertificate=${AKS_INGRESS_CONTROLLER_CERTIFICATE_BASE64}

