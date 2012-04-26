### BEGIN INIT INFO
# Provides: scriptname
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Start daemon at boot time
# Description: Enable service provided by daemon.
### END INIT INFO
#!/bin/bash
while (/sbin/route -n | grep -c '^0\.0\.0\.0') | grep -o "0"
do
        sleep 5
done
	synergyc --name box 192.168.1.118:24800
