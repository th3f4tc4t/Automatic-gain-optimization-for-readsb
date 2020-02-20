#!/bin/bash

mkdir -p /usr/local/bin
rm -f /usr/local/bin/readsb-autogain
rm -f /etc/default/readsb-autogain
rm -f /etc/cron.d/readsb-autogain

systemctl disable readsb-autogain.timer
systemctl stop readsb-autogain.timer

rm -f /lib/systemd/system/readsb-autogain.service
rm -f /lib/systemd/system/readsb-autogain.timer

systemctl daemon-reload


echo --------------
echo "readsb-autogain.sh: Uninstall complete!"
