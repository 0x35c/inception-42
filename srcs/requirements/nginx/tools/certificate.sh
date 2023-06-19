#!bin/sh
SSL_KEY_PATH="/etc/ssl/private/${DOMAIN_NAME}.key"
SSL_CERTF_PATH="/etc/ssl/certs/${DOMAIN_NAME}.crt"
openssl req -x509 -newkey rsa:4096 -keyout ${SSL_KEY_PATH} -out ${SSL_CERTF_PATH} -sha256 -days 365 -nodes -subj "/CN="${DOMAIN_NAME}""
exec nginx -g "daemon off;"
