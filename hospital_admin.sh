#!/bhange // to #
git add hospital_admin.sh
git commit -m "Fix: replace // comments with correct bash # comments"
git push origin master
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
secure_data() {
	echo "Securing active_logs directory..."
	chmod 700 active_logs
	ls -ld active_logs
}
#The echo command is to let you know that permissions will be changed to secure active logs.
#The chmod changes the permissons on the active_log file.


initialize_system
secure_data
echo "Security Environment Secured"
date
#This scrip lets you know that the environment is secure.
