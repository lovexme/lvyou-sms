#!/usr/bin/env bash
set -euo pipefail
log(){ echo "[$(date '+%F %T')] $*"; }
need_root(){ [[ ${EUID:-$(id -u)} -eq 0 ]] || { echo "need root"; exit 1; }; }
