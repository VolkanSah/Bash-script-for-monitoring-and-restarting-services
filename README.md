# Bash-Script zum Überwachen und Neustarten von Diensten
Dieses Bash-Script dient der Überwachung von Diensten auf einem Server und startet diese neu, falls sie nicht mehr laufen. Es ist vor allem dann nützlich, wenn wichtige Dienste wie Datenbanken oder Webserver ununterbrochen laufen müssen.

## Verwendung
Kopieren Sie den Inhalt der check_crash.sh-Datei in eine neue Datei auf Ihrem Server, zum Beispiel /opt/check_crash.sh.

### Machen Sie das Bash-Skript ausführbar:
sudo chmod +x /opt/check_crash.sh

### Bearbeiten Sie die Crontab-Einträge:
sudo crontab -e

### Fügen Sie die folgende Zeile hinzu, um das Skript alle 5 Minuten auszuführen:
*/5 * * * * /opt/check_crash.sh > /dev/null 2>&1

### Anpassung des Skripts
Das Skript überprüft den Status von mehreren Diensten, darunter MySQL, Nginx, Apache2 und PHP-FPM. Sie können es an Ihre spezifischen Bedürfnisse anpassen, indem Sie die Dienste hinzufügen oder entfernen, die überprüft werden sollen.

## Lizenz
Dieses Skript wird unter der MIT-Lizenz von Volkan Kücükbudak veröffentlicht. Sie können es frei verwenden, kopieren, ändern und verteilen. Es wird jedoch ohne Garantie oder Haftung zur Verfügung gestellt
