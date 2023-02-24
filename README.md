# Bash script for monitoring and restarting services
This Bash script is used for monitoring services on a server and restarting them if they are not running. It is especially useful when critical services such as databases or web servers must run uninterrupted.

## Usage
Copy the contents of the check_crash.sh file to a new file on your server, for example /opt/check_crash.sh.

### Make the Bash script executable:
sudo chmod +x /opt/check_crash.sh

### Edit the crontab entries:
sudo crontab -e

### Add the following line to run the script every 5 minutes:
*/5 * * * * /opt/check_crash.sh > /dev/null 2>&1

### Customizing the script
The script checks the status of multiple services, including MySQL, Nginx, Apache2, and PHP-FPM. You can customize it to your specific needs by adding or removing the services to be checked.

## License
This script is released under the MIT license by Volkan Kücükbudak. You are free to use, copy, modify, and distribute it. However, it is provided without warranty or liability.


# DE: Bash-Script zum Überwachen und Neustarten von Diensten
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
