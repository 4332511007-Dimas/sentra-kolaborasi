#!/usr/bin/env bash
set -euo pipefail
INTERVAL="${1:-10}"
if ! [[ "$INTERVAL" =~ ^[1-9][0-9]*$ ]]; then
  echo "Interval harus berupa bilangan bulat positif (detik)." >&2
  exit 1
fi
echo "Memantau setiap $INTERVAL detik. Tekan Ctrl+C untuk berhenti."
