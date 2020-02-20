# Automatic-gain-optimization-for-readsb
Automatic gain optimization for readsb


awk "$(cat /run/readsb/stats.json| grep total | sed 's/.*accepted":\[\([0-9]*\).*strong_signals":\([0-9]*\).*/BEGIN {printf "\\nPercentage of strong messages: %.3f \\n" , \2 * 100 \/ \1}/')"
