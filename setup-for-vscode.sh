#!/bin/bash

# Automated setup script to convert Replit project to VS Code
# Run this script after downloading the project

echo "🔧 Setting up NIT Mentoring Portal for VS Code..."
echo ""

# Step 1: Replace package.json
echo "📦 Installing clean dependencies (no Replit, no backend)..."
if [ -f "package.vscode.json" ]; then
    cp package.json package.replit.json.backup
    cp package.vscode.json package.json
    echo "✓ Replaced package.json"
else
    echo "✗ Error: package.vscode.json not found!"
    exit 1
fi

# Step 2: Replace vite.config.ts
echo "⚙️  Installing clean Vite configuration..."
if [ -f "vite.config.vscode.ts" ]; then
    cp vite.config.ts vite.config.replit.ts.backup
    cp vite.config.vscode.ts vite.config.ts
    echo "✓ Replaced vite.config.ts"
else
    echo "✗ Error: vite.config.vscode.ts not found!"
    exit 1
fi

# Step 3: Clean old dependencies
echo "🧹 Cleaning old dependencies..."
rm -rf node_modules package-lock.json
echo "✓ Cleaned"

# Step 4: Install fresh dependencies
echo "📥 Installing dependencies (this takes 1-2 minutes)..."
npm install

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Setup complete!"
    echo ""
    echo "🚀 Your app is ready for VS Code development!"
    echo ""
    echo "Next steps:"
    echo "  1. Open this folder in VS Code"
    echo "  2. Install recommended extensions (VS Code will prompt)"
    echo "  3. Run: npm run dev"
    echo "  4. App opens at http://localhost:5173"
    echo ""
    echo "📚 See VSCODE_SETUP.md for detailed instructions"
    echo ""
else
    echo ""
    echo "❌ Installation failed!"
    echo "Try manually: npm install --legacy-peer-deps"
    exit 1
fi
