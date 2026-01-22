#!/bash/bin
Threshold=90

diskusage=$(df -h | grep /dev/nvme0n1p3 | awk '{print $5} cut %


if ($diskusage -gt $threshold)
   print'diskusage is low'
else
   print'diskusage is high'
fi