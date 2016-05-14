#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 package==version"
  echo "You can do e.g. $0 \$(cat requirements.txt)"
  exit -1
fi

pip wheel --no-cache-dir --wheel-dir=. $1
