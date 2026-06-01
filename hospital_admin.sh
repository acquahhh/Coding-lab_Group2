#!/bin/bash
# hospital_admin.sh
initialize_system() {
    echo "Creating required directories..."
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir -p active_logs
    fi
    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir -p archived_logs
    fi
    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir -p reports
    fi
    echo "Directory initialization complete."
}
#updated the function to wrap mkdir with if [ ! -d ] checks 
