#!/bin/bash

# Build script for Software Quality documentation
# This script checks for conda, creates/activates the environment, and builds the site

set -e

ENV_NAME="software-quality"

echo "🔍 Checking for conda installation..."
if ! command -v conda &> /dev/null; then
    echo "❌ Error: conda is not installed or not in PATH"
    echo "Please install Miniconda or Anaconda:"
    echo "  https://docs.conda.io/en/latest/miniconda.html"
    exit 1
fi

echo "✅ conda found"

echo "🔧 Setting up conda environment: $ENV_NAME"
if conda env list | grep -q "^$ENV_NAME "; then
    echo "📦 Environment '$ENV_NAME' already exists, updating..."
else
    echo "📦 Creating new environment '$ENV_NAME'..."
    conda create -n "$ENV_NAME" python=3.11 -y
fi

echo "🚀 Activating environment..."
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate "$ENV_NAME"

echo "📥 Installing/updating dependencies from requirements.txt..."
pip install -r requirements.txt

echo "🏗️  Building the site..."
mkdocs build --strict

echo "✅ Build complete!"
echo ""
echo "To preview the site locally, run:"
echo "  conda activate $ENV_NAME"
echo "  mkdocs serve"
echo "Then open http://127.0.0.1:8000 in your browser"
