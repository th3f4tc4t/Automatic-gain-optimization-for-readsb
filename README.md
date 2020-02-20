# Automatic-gain-optimization-for-readsb

Note : this script is a simple modification of the wiedehopf Automatic-gain-optimization-for-dump1090-fa

*     only for rtl-sdr/DVB-T USB receiver, not Airspy or Beast receivers
*     at 2:45 in the morning, the gain is changed and readsb restarted
*     changes gain by one step every night, only if required
*     uses strong signals (messages >-3dB) to determine if gain should be changed
*     if the percentage of strong signals is greater than 9 percent -> gain is reduced
*     if the percentage of strong signals is less than 1 percent -> gain is increased
*     thresholds adjustable in /etc/default/readsb-autogain


**Installation:**

`sudo bash -c "$(wget -q -O - https://raw.githubusercontent.com/th3f4tc4t/Automatic-gain-optimization-for-readsb/master/readsb-autogain.sh)"`


**Testing it, rough adjustment**

Run this every 5 or 10 minutes:

`sudo /usr/local/bin/readsb-autogain`

Some errors are normal, but it should still change the gain or report that it doesn't need changing. If there aren't many planes around this might be unreliable and you should wait for the nightly adjustment.


**Configuration:**

not required, will automatically adjust gain one step if required at night


**Logs / what is it doing?**

`sudo journalctl -eu readsb-autogain`


**Removal / Deinstallation:**

`sudo bash -c "$(wget -q -O - https://raw.githubusercontent.com/th3f4tc4t/Automatic-gain-optimization-for-readsb/master/uninstall-readsb-autogain.sh)"`

