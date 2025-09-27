#!/bin/bash

# TalentMatch Project Formatter
# This script formats the entire project: React frontend, Java backend, and JSON files

set -e

echo "🎨 Starting TalentMatch project formatting..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in the right directory
if [ ! -d "frontend" ] || [ ! -d "backend" ]; then
    print_error "This script must be run from the TalentMatch root directory"
    exit 1
fi

# Format Frontend (React/TypeScript)
print_status "Formatting frontend (React/TypeScript)..."
cd frontend

if [ ! -f "package.json" ]; then
    print_error "Frontend package.json not found"
    exit 1
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    print_status "Installing frontend dependencies..."
    npm install
fi

# Run Prettier formatting
print_status "Running Prettier on frontend..."
npm run format

# Fix ESLint issues
print_status "Fixing ESLint issues..."
npm run lint:fix

print_success "Frontend formatting completed!"

# Go back to root
cd ..

# Format Backend (Java)
print_status "Formatting backend (Java)..."
cd backend

if [ ! -f "pom.xml" ]; then
    print_error "Backend pom.xml not found"
    exit 1
fi

# Run Spotless formatting
print_status "Running Spotless formatter on Java code..."
mvn spotless:apply

print_success "Backend formatting completed!"

# Go back to root
cd ..

# Format root-level JSON files
print_status "Formatting root-level configuration files..."

# Use prettier from frontend to format root JSON files if they exist
if [ -f "package.json" ]; then
    npx --prefix frontend prettier --write package.json
fi

if [ -f "tsconfig.json" ]; then
    npx --prefix frontend prettier --write tsconfig.json
fi

# Format docker-compose files
if [ -f "docker-compose.yml" ]; then
    npx --prefix frontend prettier --write docker-compose.yml
fi

if [ -f "docker-compose.dev.yml" ]; then
    npx --prefix frontend prettier --write docker-compose.dev.yml
fi

if [ -f "docker-compose.prod.yml" ]; then
    npx --prefix frontend prettier --write docker-compose.prod.yml
fi

print_success "Root-level files formatting completed!"

echo ""
print_success "🎉 Project formatting completed successfully!"
echo ""
print_status "Summary of formatted files:"
echo "  ✅ Frontend: React/TypeScript files, CSS, JSON"
echo "  ✅ Backend: Java files, application.properties, YAML"
echo "  ✅ Root: Configuration files, Docker Compose"
echo ""
print_status "To run individual formatters:"
echo "  Frontend: cd frontend && npm run format"
echo "  Backend:  cd backend && mvn spotless:apply"