#!/bin/bash

# Liste der zu überwachenden Dienste
SERVICES=(
  mysql
  nginx
  apache2
  php7.4-fpm
)

# Logdatei definieren
LOG_FILE="/var/log/service_monitor.log"

# Funktion zum Loggen von Nachrichten
log_message() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# Überprüfen und Neustarten der Dienste
for service in "${SERVICES[@]}"
do
  if ! systemctl is-active --quiet "$service"; then
    log_message "Der Dienst $service ist nicht aktiv. Versuche Neustart..."
    if sudo systemctl restart "$service"; then
      log_message "Der Dienst $service wurde erfolgreich neu gestartet."
    else
      log_message "FEHLER: Neustart von $service fehlgeschlagen!"
    fi
  else
    log_message "Der Dienst $service läuft normal."
  fi
done
