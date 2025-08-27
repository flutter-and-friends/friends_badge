#!/bin/bash

# Usage check
if [ $# -lt 1 ]; then
    echo "Usage: $0 <root-directory>"
    exit 1
fi

ROOT="$1"

# Ensure root exists
if [ ! -d "$ROOT" ]; then
    echo "Error: Directory '$ROOT' not found"
    exit 1
fi

# Find all action subdirectories (leaf folders like Dead, Fly, etc.)
find "$ROOT/Png" -type d | while read -r dir; do
    # Skip the top-level Png folder itself
    [ "$dir" = "$ROOT/Png" ] && continue

    # Pick one random PNG from this folder
    file=$(find "$dir" -maxdepth 1 -type f -name "*.png" | shuf -n 1)

    if [ -n "$file" ]; then
        # Build unique filename: Character_Action.png
        char=$(basename "$(dirname "$dir")")
        action=$(basename "$dir")
        fname="${char}_${action}.png"

        # Copy to root
        cp "$file" "$ROOT/$fname"

        # Crop, resize (keeping aspect ratio), then pad to 512x512
        mogrify -trim +repage \
            -resize 512x512 \
            -background none -gravity center -extent 512x512 \
            "$ROOT/$fname"
    fi
done

