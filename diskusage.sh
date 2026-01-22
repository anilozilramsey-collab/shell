#!/bash/bin
THRESHOLD=90

diskusage=$(df -h | grep /dev/nvme0n1p3 | awk '{print $5}| cut %


if [$diskusage -gt $THRESHOLD]
   print'diskusage is low'
else
   print'diskusage is high'
   
fi
