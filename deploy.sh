#!/bin/bash
# Deploy obsidian-veil theme from repo to The Lounge packages directory
# Usage: ./deploy.sh

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.thelounge/packages/node_modules/thelounge-theme-obsidian-veil"

echo "Deploying Obsidian Veil..."
echo "  From: $REPO_DIR"
echo "  To:   $TARGET_DIR"

# Copy only the theme files (not .git)
mkdir -p "$TARGET_DIR"
cp "$REPO_DIR/obsidian-veil.css" "$TARGET_DIR/"
cp "$REPO_DIR/package.json" "$TARGET_DIR/"

echo "✅ Deployed! Refresh your browser to see changes."
