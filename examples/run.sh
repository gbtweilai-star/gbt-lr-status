#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_lr_status info
PYTHONPATH=src python -m gbt_lr_status check --payload '{}'
PYTHONPATH=src python -m gbt_lr_status run   --payload '{}'
