#!/bin/bash
TIMESTAMP=$(date '+%Y%m%d_%H%M')
for LOG in heart_rate_log temperature_log water_usage_log; do
    SRC="active_logs/${LOG}.log"
    DEST="archived_logs/${LOG}_${TIMESTAMP}.log"
    if [ -f "$SRC" ]; then
        mv "$SRC" "$DEST"
        touch "$SRC"
        echo "Archived: $DEST"
    fi
done
echo "Log rotation complete — $(date)"
