# Release Notes

## Modular Transition Edition

- 统一入口：`install.sh`
- 保留稳定路径：`install-legacy`
- 提供模板目录：`templates/backend`、`templates/frontend`、`templates/systemd`
- 目标：逐步把 legacy 能力迁移到模块化实现


## Install Command Switch

- `install` switched to stable production path (legacy engine)
- New experimental command: `install-modular`
- Goal: keep one recommended command for users while modular migration continues


## Modular Entry Ready

- Added `scripts/modular-install.sh`
- `install-modular` now executes a real install flow (production-usable)
- Current strategy: stable engine + modular migration in-place
