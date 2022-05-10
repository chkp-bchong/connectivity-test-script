# Simple Connectivity Test Script
This is a simple connectivity test script that can be used with cronjob, to test connectivity from one host to another via Telnet. To use this script, copy and place it on a path that is accessible, and modify the following variables:
1. testhost
2. port
3. logdir

The script will have the logs printed on the log directory, with the file name vpnlog_<port number>.log. multiple scripts can be run at the same time to test connectivity on different ports and different hosts, by duplicating the script.

## Modifying the permission for the script
  To modify the perission for the script, use chmod:
  ```
  chmod 777 /var/tmp/connectivitytest.sh
  ```
  
## Working with crontab
  To provide continuous monitoring / testing for a certain port and host, crontab can be utilized to execute the script every minute. Sample crontab entry as such:
  ```
  * * * * * /var/tmp/connectivitytest.sh
  ```
