#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$ROOT_DIR/lib/common.sh"

case "${1:-help}" in
  install)
    log "[install] TODO: copy templates + render vars + setup services"
    ;;
  status)
    log "[status] TODO"
    ;;
  restart)
    log "[restart] TODO"
    ;;
  backup)
    log "[backup] TODO"
    ;;
  restore)
    log "[restore] TODO"
    ;;
  uninstall)
    log "[uninstall] TODO"
    ;;
  help|*)
    cat <<EOF
Usage: sudo ./install.sh <command>
Commands: install | status | restart | backup | restore | uninstall
EOF
    ;;
esac
