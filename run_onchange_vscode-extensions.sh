#!/bin/zsh
# Managed by chezmoi: Declarative VS Code extension installer
# Runs automatically on `chezmoi apply` whenever this file changes.

if ! command -v code >/dev/null 2>&1; then
  exit 0
fi

# 1. Global Core Extensions (Always Enabled)
GLOBAL_EXTENSIONS=(
  "aries.aries"
  "charliermarsh.ruff"
  "github.vscode-github-actions"
  "github.vscode-pull-request-github"
  "google.gemini-cli-vscode-ide-companion"
  "google.google-antigravity"
  "mechatroner.rainbow-csv"
  "ms-azuretools.vscode-containers"
  "ms-python.python"
  "ms-python.vscode-pylance"
  "ms-vscode-remote.remote-containers"
  "ms-vscode-remote.remote-ssh"
  "ms-vscode-remote.remote-ssh-edit"
  "ms-vscode.remote-explorer"
  "pkief.material-icon-theme"
  "redhat.vscode-yaml"
  "streetsidesoftware.code-spell-checker"
  "tamasfe.even-better-toml"
  "tomoki1207.pdf"
  "yzhang.markdown-all-in-one"
)

# 2. Per-Project Extensions (Also recommended in each repo's .vscode/extensions.json)
WORKSPACE_EXTENSIONS=(
  "dart-code.dart-code"
  "dart-code.flutter"
  "grafana.vscode-jsonnet"
  "keesschollaart.vscode-home-assistant"
  "likec4.likec4-vscode"
  "loyio.nand2tetris-vscode"
  "ms-toolsai.jupyter"
  "pranavjain.nand2tetris-hdl-visualizer"
  "supabase.vscode-supabase-extension"
  "toba.vsfire"
)

INSTALLED=$(code --list-extensions | tr '[:upper:]' '[:lower:]')

for ext in "${GLOBAL_EXTENSIONS[@]}" "${WORKSPACE_EXTENSIONS[@]}"; do
  if ! echo "$INSTALLED" | grep -qx "${ext:l}"; then
    code --install-extension "$ext"
  fi
done
