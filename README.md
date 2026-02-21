# L2G (LeetCode to GitHub)

<p align="center">
  <img src="assets/upload_icon.svg" width="100" />
</p>

L2G 是一款浏览器扩展程序，可以自动将您在 LeetCode 上通过的代码提交同步到您的 GitHub 仓库中，让您轻松管理和展示自己的刷题记录。

## ✨ 核心特性

- **全自动同步**: 在 LeetCode 提交通过验证后，代码会自动推送到您绑定的 GitHub 仓库。
- **免密授权**: 通过 GitHub OAuth 安全登录，无需手动复制粘贴 Token。
- **详细记录**: 提交的代码包含题目难度、标签(Tags)和详细的题目描述(README)。
- **多平台支持**: 同时支持 Chrome 和 Firefox 浏览器。

## 🚀 安装指南

### 开发者模式运行（Chrome）

1. Clone 本仓库到本地:
   ```bash
   git clone https://github.com/您的用户名/您的仓库名.git
   cd L2G
   ```
2. 安装依赖并构建:
   ```bash
   npm install
   npm run build
   ```
3. 打开 Chrome 并进入扩展程序页面 (`chrome://extensions/`)。
4. 开启右上角的 **开发者模式**。
5. 点击 **加载已解压的扩展程序**，然后选择项目中的 `dist/chrome` 文件夹。

### 初始配置 (绑定 GitHub)

1. 点击浏览器右上角的 `L2G` 扩展图标。
2. 点击 "Authenticate" (认证) 按钮授权 GitHub。
3. 在弹出的页面中，选择是 **创建一个新仓库** 还是 **绑定已有仓库**。
4. 完成绑定后，即可在 LeetCode 愉快刷题，代码将会自动同步！

## 🛠️ 技术栈

- JavaScript (Vanilla)
- Chrome / Firefox Extension API
- GitHub REST API v3

## 🤝 贡献说明

欢迎提交 Pull Request 或者创建 Issue 来共同完善该项目。
