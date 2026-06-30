SOPS_VERSION="v3.13.0"
BIN_DIR="$HOME/.sops-bin"
SOPS_PATH="$BIN_DIR/sops"

if [ ! -f "$SOPS_PATH" ]; then
    echo "SOPS pro Linux nebyl nalezen. Stahuji automaticky..."
    mkdir -p "$BIN_DIR"
    curl -fL -o "$SOPS_PATH" "https://github.com/getsops/sops/releases/download/$SOPS_VERSION/sops-$SOPS_VERSION.linux.amd64"
    chmod +x "$SOPS_PATH"
    echo "SOPS úspěšně stažen a nastaven jako spustitelný."
fi

echo 'export PATH="$HOME/.sops-bin:$PATH"' >> ~/.bashrc
source ~/.bashrc