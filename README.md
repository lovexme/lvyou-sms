# lvyou (模块化版)

一个用于部署 Board/LAN 管理面板的模块化脚本工程（保留原有功能，便于维护与协作）。

## 特性
- 模块化目录（`install.sh + lib + templates`）
- 可扩展命令入口（install/status/restart/backup/restore/uninstall）
- GitHub CI（shell + 前端构建）

## 快速开始
```bash
git clone <your-repo-url>
cd lvyou-github-starter
chmod +x install.sh
sudo ./install.sh install
```

## 目录结构
```text
.
├── install.sh
├── lib/
│   └── common.sh
├── templates/
│   ├── backend/main.py
│   ├── frontend/src/App.vue
│   └── systemd/
│       ├── board-manager-v4.service
│       └── board-manager-v6.service
├── .github/workflows/ci.yml
├── .gitignore
├── LICENSE
├── CHANGELOG.md
└── CONTRIBUTING.md
```

## 安全提示
- 发布前移除所有真实密钥/密码
- 使用 `config/.env.example` 提供示例配置
- 生产环境首次安装务必修改默认密码
