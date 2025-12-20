#!/bin/bash

FASTFETCH="$HOME/.config/fastfetch"
if [ ! -d "$FASTFETCH" ]; then
    echo "Fastfetch config folder does not exist. Creating folder..."
    mkdir -p "$FASTFETCH"
    echo "Fastfetch config folder successfully created."
else
    echo "Fastfetch config folder at $FASTFETCH already exists."
fi

echo "Downloading fastfetch configuration file..."
curl -L -o "$FASTFETCH/config.jsonc" https://raw.githubusercontent.com/fastfetch-cli/fastfetch/refs/heads/dev/presets/neofetch.jsonc
echo "File successfully downloaded."

echo "Fastfetch successfully configured to look like neofetch."

