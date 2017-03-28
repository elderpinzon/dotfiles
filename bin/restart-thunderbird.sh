#############################################################
## Thunderbird kept crashing.
## Check if it is running, restart if no
#############################################################
#!/bin/bash

pidof  thunderbird >/dev/null
if [[ $? -ne 0 ]] ; then
        echo "Restarting Tunderbird:     $(date)" >> /home/elder/.scripts/restart-thunderbird.log
        /home/elder/Downloads/thunderbird/./thunderbird &
fi