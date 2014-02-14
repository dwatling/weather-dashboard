#!/bin/sh
crontab -l > cron.temp

echo "*/5 * * * * sh /home/dwatling/projects/weather-dashboard/bin/fetch_weather_snapshot.sh" >> cron.temp
crontab cron.temp
rm cron.temp
