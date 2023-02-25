# Bash script for monitoring and restarting services
This Bash script is used for monitoring services on a server and restarting them if they are not running. It is especially useful when critical services such as databases or web servers must run uninterrupted.

## Usage
Copy the contents of the check_crash.sh file to a new file on your server, for example /opt/check_crash.sh.

### Make the Bash script executable:
```bash
sudo chmod +x /opt/check_crash.sh
```

### Edit the crontab entries:
```bash
sudo crontab -e
```

### Add the following line to run the script every 5 minutes:
```cron
*/5 * * * * /opt/check_crash.sh > /dev/null 2>&1
```

### Customizing the script
The script checks the status of multiple services, including MySQL, Nginx, Apache2, and PHP-FPM. You can customize it to your specific needs by adding or removing the services to be checked.

## License
This script is released under the MIT license by Volkan Kücükbudak. You are free to use, copy, modify, and distribute it. However, it is provided without warranty or liability.

