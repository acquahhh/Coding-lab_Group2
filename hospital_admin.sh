#!/bin/bash
secure_data() {
	echo "Securing active_logs directory..."
	chmod 700 active_logs
	ls -ld active_logs
}
// The echo command is to let you know that permissions will be changed to secure active logs.
