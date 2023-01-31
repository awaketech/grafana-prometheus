#!/bin/bash
START_REPORT_DATE=`date +"%Y-%m-%d 07:00:00"`
END_REPORT_DATE=`date +"%Y-%m-%d 10:10:00"`
START_REPORT_DATE_EPOCH=$(date -d "$START_REPORT_DATE" +'%s%3N')
END_REPORT_DATE_EPOCH=$(date -d "$END_REPORT_DATE" +'%s%3N')
url="http://0.0.0.0:3000/d/BiigkBu7k/grafana-live-container-and-system-monitoring?orgId=1&refresh=10s&from=1663043655618&to=1663058055618&viewPanel=5"
out="VLTS_G2S_OPEN_$START_REPORT_DATE $END_REPORT_DATE.png"
out=`echo $out | tr -s "\ " "\_" | tr -d ":"`
out=`echo $out | tr -s "\ " "\_" | tr -d ":"`
curl -o $out -H "Authorization: Bearer eyJrIjoiYTRNdTQ0dHRYazYyYlNPOElDTk5Cd3ZyTTNrS0lraGsiLCJuIjoiVGVzdCIsImlkIjoxfQ==" $url 2>/dev/null
