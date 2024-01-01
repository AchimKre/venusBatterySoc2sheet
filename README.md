The script reads the state of charge of a victron venus device and sends it to a Google Form.

# Git clone 
```
git clone https://github.com/AchimKre/venusBatterySoc2sheet.git
```
# config
```
vi venusBatterySoc2sheet/.env
# test
source venusBatterySoc2sheet/.env
. ./venusBatterySoc2sheet/venusBatterySoc2sheet.sh
```

# set cron
```
0 * * * * source venusBatterySoc2sheet/.env && . ./venusBatterySoc2sheet/venusBatterySoc2sheet.sh
```