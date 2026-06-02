#!/bin/bash
# hospital_analysis.sh

process_vitals() {
    echo "Processing critical vitals..."
    mkdir -p reports
    echo "# Critical Alerts — $(date)" > reports/critical_alerts.txt
    grep "CRITICAL" active_logs/heart_rate_log.log | \
        awk -F'|' '{printf "%-24s %-22s %s\n", $1,$2,$3}' >> reports/critical_alerts.txt
    grep "CRITICAL" active_logs/temperature_log.log | \
        awk -F'|' '{printf "%-24s %-22s %s\n", $1,$2,$3}' >> reports/critical_alerts.txt
    echo "Critical alerts saved to reports/critical_alerts.txt"
}

water_audit() {
    awk -F'|' '/ICU_WATER_RESERVE/ {sum+=$3; count++}
    END {
        printf "+---------------------------------+\n"
        printf "| ICU Water Reserve Audit         |\n"
        printf "| Records : %-5d                 |\n", count
        printf "| Average : %-8.2f litres       |\n", sum/count
        printf "+---------------------------------+\n"
    }' active_logs/water_usage_log.log
}

process_vitals
water_audit
