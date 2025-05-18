PM2_NAME := Explorer-stonegaze

install:
	@echo "Installing dependencies..."
	@npm install
	@echo "Installation completed."

pull:
	@echo "Pulling latest changes from the repository..."
	@git pull
	@echo "Pull completed."

build:
	@echo "Building the project..."
	@npm run build
	@echo "Build completed."

restart-pm2:
	@echo "Restarting the apps..."
	@pm2 restart $(PM2_NAME)
	@echo "Apps restarted."

restart: pull build restart-pm2