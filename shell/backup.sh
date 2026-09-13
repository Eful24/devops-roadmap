#!/bin/bash

SOURCE="$HOME/Documents"
DEST="$HOME/backups"

mkdir -p "$DEST"

tar -czf "$DEST/backup-$(date +%F).tar.gz" "$SOURCE"

echo "Backup selesai"
