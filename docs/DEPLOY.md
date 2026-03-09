# 部署说明

## 系统要求

- Linux（Debian/Ubuntu/CentOS/RHEL 系）
- root 或 sudo 权限
- 可访问 npm/pypi 源

## 安装

```bash
chmod +x install.sh
sudo ./install.sh install-legacy
```

## 端口与密码

安装过程会提示设置端口与 UI 密码。

## 服务管理

```bash
sudo ./install.sh status
sudo ./install.sh restart
sudo ./install.sh logs 200
```

## 备份与恢复

```bash
sudo ./install.sh backup
sudo ./install.sh restore /var/backups/board-manager/xxx.tar.gz
```
