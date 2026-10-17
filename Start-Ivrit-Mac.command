#!/bin/bash
cd "$(dirname "$0")" || exit 1
if ! command -v python3 >/dev/null 2>&1; then
  echo 'Python 3 is required. Install it from https://www.python.org/downloads/'
  read -r -p 'Press Return to close...' _
  exit 1
fi
echo 'Starting Ivrit Family... Keep this Terminal window open while using the app.'
python3 launch_server.py
status=$?
if [ "$status" -ne 0 ]; then
  read -r -p 'Press Return to close...' _
fi
