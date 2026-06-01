process_vitals() {
    echo "Processing critical vitals..."
    mkdir -p reports
    echo "# Critical Alerts — $(date)" > reports/critical_alerts.txt
    grep "CRITICAL" active_logs/heart_rate_log.log | \
        awk -F',' '{printf "%-24s %-22s %s\n", $1,$2,$3}' >> reports/critical_alerts.txt
    grep "CRITICAL" active_logs/temperature_log.log | \
        awk -F',' '{printf "%-24s %-22s %s\n", $1,$2,$3}' >> reports/critical_alerts.txt
    echo "Critical alerts saved to reports/critical_alerts.txt"
}
