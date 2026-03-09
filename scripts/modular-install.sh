#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

need_root

# 模块化入口（MVP）：
# 当前先复用稳定安装引擎，保证 install-modular 可直接生产使用。
# 后续逐步将功能迁移到 lib/ + templates 的真实模块实现。
legacy() {
  local cmd="$1"; shift || true
  bash "$ROOT_DIR/scripts/legacy-install.sh" "$cmd" "$@"
}

CMD="${1:-install}"; shift || true
case "$CMD" in
  install) legacy install "$@" ;;
  status) legacy status "$@" ;;
  restart) legacy restart "$@" ;;
  logs) legacy logs "$@" ;;
  backup) legacy backup "$@" ;;
  restore) legacy restore "$@" ;;
  set-ui-pass) legacy set-ui-pass "$@" ;;
  set-port) legacy set-port "$@" ;;
  uninstall) legacy uninstall "$@" ;;
  scan) legacy scan "$@" ;;
  *)
    log "[modular] unsupported cmd: $CMD"
    log "[modular] supported: install|status|restart|logs|backup|restore|set-ui-pass|set-port|uninstall|scan"
    exit 1
    ;;
esac
