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

delete-build-folder:
	@echo "Delete build folder..."
	@rm -rf dist
	@echo "Delete build folder success."

restart: pull build restart-pm2