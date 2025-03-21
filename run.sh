#!/bin/bash

APP_NAME=${1:-"default-app"}
IMAGE_NAME="$APP_NAME"
CONTAINER_NAME="$APP_NAME-container"
APP_DIR=$(pwd)
HASH_FILE=".docker_build_hash"
PORT=5000

# Display warning if no parameter was provided
if [ -z "$1" ]; then
  echo "┌─────────────────────────────────────────────────┐"
  echo "│ WARNING: No app name provided, using default-app │"
  echo "│ Usage: ./run.sh [app-name]                      │"
  echo "└─────────────────────────────────────────────────┘"
fi

generate_hash() {
  cat Dockerfile requirements.txt | md5sum | cut -d' ' -f1
}

current_hash=$(generate_hash)
old_hash=""
if [ -f "$HASH_FILE" ]; then
  old_hash=$(cat "$HASH_FILE")
fi

if docker ps -a | grep -q "$CONTAINER_NAME"; then
  echo "➡️ Stopping existing container..."
  docker stop "$CONTAINER_NAME" > /dev/null
  docker rm "$CONTAINER_NAME" > /dev/null
fi

if [ "$current_hash" != "$old_hash" ]; then
  echo "🛠️ Changes detected in Dockerfile or requirements.txt, rebuilding image..."
  docker build -t "$IMAGE_NAME" .
  
  if [ $? -eq 0 ]; then
    echo "$current_hash" > "$HASH_FILE"
    echo "✅ Docker image successfully built!"
  else
    echo "❌ Error building Docker image!"
    exit 1
  fi
else
  echo "✅ Using existing Docker image (no changes in configuration)"
fi

echo "🚀 Starting container with logs display..."
echo "📝 To stop the application, press Ctrl+C"

docker run -it \
  --name "$CONTAINER_NAME" \
  -p $PORT:5000 \
  -v "$APP_DIR:/app" \
  -e FLASK_APP=app.py \
  -e FLASK_ENV=development \
  "$IMAGE_NAME"

echo "🛑 Application has been stopped"
