#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$ROOT_DIR/lib/common.sh"

usage() {
  cat <<EOF
Usage: sudo ./install.sh <command>

Commands:
  install            Run modular installer (in progress)
  install-legacy     Run legacy one-click installer (fully available)
  status             Service status (legacy)
  restart            Restart services (legacy)
  logs [n]           Show logs (legacy)
  backup             Backup data (legacy)
  restore [file]     Restore backup (legacy)
  set-ui-pass [pass] Update UI password (legacy)
  set-port [port]    Update service port (legacy)
  uninstall          Uninstall (legacy)
  help               Show this help

Recommended now:
  sudo ./install.sh install-legacy
EOF
}

legacy() {
  local cmd="$1"; shift || true
  need_root
  bash "$ROOT_DIR/scripts/legacy-install.sh" "$cmd" "$@"
}

modular_install() {
  need_root
  log "[modular] Scaffold mode: modular full installer is being migrated."
  log "[modular] Use legacy path now for production deploy:"
  log "          sudo ./install.sh install-legacy"
}

CMD="${1:-help}"; shift || true
case "$CMD" in
  install) modular_install ;;
  install-legacy) legacy install "$@" ;;
  status) legacy status "$@" ;;
  restart) legacy restart "$@" ;;
  logs) legacy logs "$@" ;;
  backup) legacy backup "$@" ;;
  restore) legacy restore "$@" ;;
  set-ui-pass) legacy set-ui-pass "$@" ;;
  set-port) legacy set-port "$@" ;;
  uninstall) legacy uninstall "$@" ;;
  help|*) usage ;;
esac
