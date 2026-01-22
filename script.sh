#!/bain/bash
THRESHOLD=80


read total used free <<< $(free -m | awk '/^Mem:/ {print $2, $3, $4}')
usage=$(( used * 100 / total ))

echo "Memory usage: ${usage}%"

if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: Memory usage above ${THRESHOLD}%"
fi