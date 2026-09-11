#!/bin/bash

# -----------------------------
# Automated UV + virtualenv setup
# -----------------------------

# 1️⃣ Backup current .bashrc
echo "Backing up current .bashrc to .bashrc.backup..."
cp ~/.bashrc ~/.bashrc.backup

# 2️⃣ Clean broken Snap/brew references, keep envman and Go paths
echo "Cleaning broken Snap/brew references..."
sed -i '/snap\/code/d;/\/bin\/brew/d' ~/.bashrc

# 3️⃣ Ensure uv path is in .bashrc
if ! grep -qxF 'export PATH="$HOME/.local/bin:$PATH"' ~/.bashrc; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

# 4️⃣ Reload shell
echo "Reloading shell..."
source ~/.bashrc

# 5️⃣ Install uv globally
echo "Installing uv..."
curl -Ls https://astral.sh/uv/install.sh | sh

# 6️⃣ Go to project folder
PROJECT_DIR=~/AI_project/llm_engineering
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit

# 7️⃣ Create virtualenv llmenv using uv
echo "Creating virtual environment llmenv..."
uv venv llmenv

# 8️⃣ Activate virtualenv
echo "Activating virtual environment..."
source llmenv/bin/activate

# 9️⃣ Verify installation
echo "Verifying uv installation..."
echo "UV binary location:" $(which uv)
uv --version

echo "✅ Setup complete! Virtual environment (llmenv) is active and uv is ready to use."
