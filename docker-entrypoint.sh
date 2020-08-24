#!/bin/sh

#Generating wowemu.key
echo "Generating wowemu.key..."
envsubst < /tmp/wowemu.key.example  > /app/wowemu.key

echo "Starting WoWEmu..."
xvfb-run wine WE_DK-Core.exe
