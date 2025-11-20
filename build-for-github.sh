#!/bin/bash

# Build script for GitHub Pages deployment
# This creates a production-ready build

echo "🏗️  Building NIT Mentoring Portal for GitHub Pages..."
echo ""

# Check if repo name is provided
if [ -z "$1" ]; then
    echo "Usage: ./build-for-github.sh your-repo-name"
    echo "Example: ./build-for-github.sh nit-mentoring-portal"
    exit 1
fi

REPO_NAME=$1

echo "📝 Repository: $REPO_NAME"
echo ""

# Update vite config
echo "⚙️  Updating configuration..."
sed -i.bak "s/const REPO_NAME = '.*'/const REPO_NAME = '$REPO_NAME'/" vite.config.github.ts
rm -f vite.config.github.ts.bak

# Clean previous build
echo "🧹 Cleaning previous build..."
rm -rf dist/

# Build
echo "🔨 Building application..."
npx vite build --config vite.config.github.ts --logLevel warn

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build completed successfully!"
    echo ""
    echo "📦 Build output is in: ./dist/"
    echo ""
    echo "Next steps:"
    echo "1. Push this code to GitHub"
    echo "2. Enable GitHub Pages in repository settings"
    echo "3. Your site will be live at: https://YOUR_USERNAME.github.io/$REPO_NAME/"
    echo ""
else
    echo ""
    echo "❌ Build failed! Check errors above."
    exit 1
fi
