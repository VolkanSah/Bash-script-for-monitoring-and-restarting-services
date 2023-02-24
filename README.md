# Linux-service-auto-restart-example
small script for restarting Linux Services


#!/bin/bash

SERVICES=(
  mysql
  nginx
  apache2
  php7.3-fpm
  tor
)

for service in "${SERVICES[@]}"
do
  if ! systemctl is-active --quiet "$service"; then
    sudo systemctl restart "$service"
    echo "Restarting $service service."
  fi
done
