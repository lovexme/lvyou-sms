# lvyou-sms (Modular Transition Edition)

This repository is now in **modular transition**:
- `install.sh` is the new unified entrypoint.
- Production deployment currently uses the legacy script through wrapper commands.

## Quick Start (One-click)

```bash
git clone https://github.com/lovexme/lvyou-sms.git
cd lvyou-sms
chmod +x install.sh
sudo ./install.sh install-legacy
```

## Daily Ops

```bash
sudo ./install.sh status
sudo ./install.sh restart
sudo ./install.sh logs 100
sudo ./install.sh backup
sudo ./install.sh restore /path/to/backup.tar.gz
sudo ./install.sh uninstall
```

## Project Layout

```text
.
├── install.sh                    # unified entrypoint
├── scripts/legacy-install.sh     # full legacy installer (current production path)
├── lib/
│   └── common.sh
├── templates/
│   ├── backend/main.py
│   ├── frontend/src/App.vue
│   └── systemd/*.service
└── .github/workflows/ci.yml
```

## Migration Plan

1. Keep production stable through `install-legacy`.
2. Move features from legacy script into `lib/*.sh` + `templates/*` in batches.
3. Switch `install` to full modular installer after parity checks.

## Security Notes

- Never commit real tokens/passwords.
- Rotate any token that was exposed in chat logs.
