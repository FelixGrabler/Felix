# Felix Personal Website Makefile (Docker-only)

.PHONY: help dev prod build install clean logs stop restart shell

# Default target
help:
	@echo "Felix Personal Website - Docker Commands:"
	@echo "  dev         - Start development environment with Docker"
	@echo "  prod        - Start production environment with Docker"
	@echo "  build       - Build production Docker image"
	@echo "  install     - Install dependencies through Docker"
	@echo "  clean       - Clean Docker containers, images and volumes"
	@echo "  logs        - Show Docker container logs"
	@echo "  stop        - Stop all Docker containers"
	@echo "  restart     - Restart Docker containers"
	@echo "  shell       - Open shell in development container"

# Start development environment with hot reload
dev:
	@echo "Starting development environment..."
	docker-compose -f docker-compose.dev.yml up --build

# Start development in background
dev-bg:
	@echo "Starting development environment in background..."
	docker-compose -f docker-compose.dev.yml up --build -d

# Start production environment
prod:
	@echo "Starting production environment..."
	docker-compose up --build -d

# Build production image only
build:
	@echo "Building production Docker image..."
	docker-compose build

# Install dependencies through Docker
install:
	@echo "Installing dependencies through Docker..."
	docker-compose -f docker-compose.dev.yml run --rm felix-website-dev npm install

# Stop all Docker containers
stop:
	@echo "Stopping all containers..."
	docker-compose down
	docker-compose -f docker-compose.dev.yml down

# Restart containers (development)
restart:
	@echo "Restarting development environment..."
	docker-compose -f docker-compose.dev.yml down
	docker-compose -f docker-compose.dev.yml up --build -d

# Restart production containers
restart-prod:
	@echo "Restarting production environment..."
	docker-compose down
	docker-compose up --build -d

# Show Docker container logs
logs:
	@echo "Showing logs (development)..."
	docker-compose -f docker-compose.dev.yml logs -f

# Show production logs
logs-prod:
	@echo "Showing production logs..."
	docker-compose logs -f

# Open shell in development container
shell:
	@echo "Opening shell in development container..."
	docker-compose -f docker-compose.dev.yml exec felix-website-dev sh

# Run npm commands in container
npm:
	@echo "Running npm command in container..."
	@echo "Usage: make npm CMD='your-npm-command'"
	docker-compose -f docker-compose.dev.yml run --rm felix-website-dev npm $(CMD)

# Clean everything Docker-related
clean:
	@echo "Cleaning Docker containers, images and volumes..."
	docker-compose down --rmi all --volumes --remove-orphans
	docker-compose -f docker-compose.dev.yml down --rmi all --volumes --remove-orphans
	docker system prune -f

# Integration with grabler.me-hub
hub-integration:
	@echo "To integrate with grabler.me-hub:"
	@echo "1. Copy this directory to grabler.me-hub/Felix/"
	@echo "2. Add Felix service to grabler.me-hub/docker-compose.yml"
	@echo "3. Update proxy configuration if needed"
	@echo "4. Use 'make prod' to start in production mode"
