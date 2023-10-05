#!/bin/bash

# Set the graph ID and time variables
graphId=$1
time=$2
time2=$3

echo "Graph ID: $graphId"
echo "Start Time: $time"
echo "End Time: $time2"
# Zabbix login URL and credentials
loginUrl="http://3.139.62.54:8080/api_jsonrpc.php"
username="Zabbix"
password="Nocteam@@456"

# Perform login request and save cookies
curl -k -c cookies.txt -d "name=$username&password=$password&enter=Enter" $loginUrl

# Perform graph download request using cookies
curl -k -b cookies.txt -o $4 "http://3.139.62.54:8080/chart2.php?graphid=$graphId&from=$time&to=$time2&height=201&width=1482&profileIdx=web.charts.filter&_=w4mklgbe"
#curl -k -b cookies.txt -o $1 "http://3.139.62.54:8080/chart2.php?graphid=7596&from=2023-07-01%2001:00:00&to=2023-07-27%2013:00:00&height=201&width=1534&profileIdx=web.charts.filter&_=w69fq30e"

