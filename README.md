# lvyou-sms

绿邮内网群控（模块化过渡版）。

- ✅ 当前生产可用：`install`
- 🔧 模块化入口：`install`（逐步迁移中）

## 一键安装（推荐）

```bash
git clone https://github.com/lovexme/lvyou-sms.git
cd lvyou-sms
chmod +x install.sh
sudo ./install.sh install
```

## 直接在线安装（无需先 clone）

```bash
curl -fsSL https://raw.githubusercontent.com/lovexme/lvyou-sms/main/install.sh -o /tmp/lvyou-install.sh && \
chmod +x /tmp/lvyou-install.sh && \
sudo /tmp/lvyou-install.sh install-legacy
```

## 常用运维命令

```bash
sudo ./install.sh status
sudo ./install.sh restart
sudo ./install.sh logs 100
sudo ./install.sh backup
sudo ./install.sh restore /path/to/backup.tar.gz
sudo ./install.sh uninstall
```

## 项目结构

```text
.
├── install.sh                    # 统一入口
├── scripts/legacy-install.sh     # 生产可用完整安装脚本
├── lib/                          # 公共函数
├── templates/
│   ├── backend/main.py
│   ├── frontend/src/App.vue
│   └── systemd/*.service
└── .github/workflows/ci.yml
```

## 版本策略

- `install`：功能完整、优先稳定
- `install`：模块化重构入口（与 legacy 逐步对齐）

## 安全建议

- 首次安装务必修改默认口令
- 不要把任何 token/密钥提交到仓库
- 建议仅在内网环境开放服务
