#!/usr/bin/env bash
set -euo pipefail
CONFIG_FILE="${1:-./ports.conf}"
TIMEOUT_SECS="${TIMEOUT_SECS:-3}"
while IFS=: read -r host port label; do
  [[ -z "$host" || "$host" =~ ^# ]] && continue
  if timeout "$TIMEOUT_SECS" bash -c "</dev/tcp/$host/$port" 2>/dev/null; then
    echo "[OK] ${label:-$host:$port}"
  else
    echo "[FAIL] ${label:-$host:$port}"
  fi
done < "$CONFIG_FILE"
