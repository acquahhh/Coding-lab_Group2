#!/bin/bash
secure_data() {
	echo "Securing active_logs directory..."
	chmod 700 active_logs
	ls -ld active_logs
}
// The echo command is to let you know that permissions will be changed to secure active logs.
//The chmod changes the permissons on the active_log file.


initialize_system
secure_data
echo "Security Environment Secured"
date
// This scrip lets you know that the environment is secure.
