export APP_GATEWAY_LISTENER_CERTIFICATE=$(cat appgw.pfx | base64 | tr -d '\n')
echo $APP_GATEWAY_LISTENER_CERTIFICATE

