LOG_DIR=/var/log/users/${USER}
INSTALL_DIR=/usr/local/bin

install:
	# Setup directory for future log files
	sudo mkdir -p ${LOG_DIR}
	sudo chown -R ${USER}:users ${LOG_DIR}
	sudo chmod g+s ${LOG_DIR}
	ls -l /var/log/ | grep "users"
	# Copy command inside $PATH
	sudo cp log_user ${INSTALL_DIR}
	@echo "The program log_user is now installed. See log_user --help to get started."

clean:
	sudo rm ${INSTALL_DIR}/log_user
	@echo "INFO: To remove log files run \"sudo rm -rf /var/log/users/${USER}\""
