# SBTI 人格测试（娱乐向）

单页静态站点：十五维度趣味人格测试，结果含类型解读与人格配图。本项目为爱好者**二开/部署版**，在单文件 HTML 上扩展了分享、历史记录、分享图预览等能力。

## 源码仓库

- GitHub：<https://github.com/miyu6666/SBTI>  
- 克隆：`git clone https://github.com/miyu6666/SBTI.git`

## 在线体验

- 当前部署示例：<https://sbti.snam.cn/>
- 分享链接、二维码中的落地地址在源码里由常量 `SHARE_PUBLIC_ORIGIN` 控制（`index.html` 内），**换域名部署时请改成你自己的站点根地址**。

## 原作者与版权说明

- **测试内容与创意版权归原作者**：[B 站 @蛆肉儿串儿](https://space.bilibili.com/417038183)（UID 417038183）  
- 相关视频（原作参考）：<https://www.bilibili.com/video/BV1LpDHByET6/>

请勿将原作内容用于盈利；本仓库仅供学习交流与非商业展示。

## 二开 / 维护信息

- 维护：**@小飞侠**  
- 抖音：<https://v.douyin.com/h4dTgqqXsww/>

## 项目结构

```text
SBTI-test-main/
├── index.html      # 单页：样式、题目逻辑、结果、分享与历史等
├── image/          # 各人格类型配图（PNG/JPG）
├── README.md
└── .gitignore
```

依赖通过 CDN 引入（如二维码库），无需 `npm install`。

## 本地预览

1. **推荐**：用任意静态服务器打开项目根目录（避免直接用 `file://` 打开 `index.html`）。例如：
   - VS Code：**Live Server**
   - 命令行：`npx serve .` 或 `python -m http.server 8080`
2. 浏览器访问给出的 `http://localhost:...` 地址。

> **说明**：用本地磁盘路径（`file://`）打开时，浏览器会限制「把本地配图绘制进导出画布」，**生成分享长图时可能不含人格配图**；用 `http://localhost` 或线上 HTTPS 访问即可正常带图导出。

## 主要功能（相对单页原作）

- 答题进度、免责声明、结果页十五维度展示  
- **测过记录**（`localStorage`，仅本机）  
- **分享**：复制纯链接文案；可选系统分享；**生成分享图**（预览 → 保存 / 系统分享，含二维码）  
- 页脚作者与二开说明  

## 部署

将 **`index.html`** 与 **`image/`** 整目录上传到任意静态托管（Nginx、OSS、GitHub Pages、Vercel 等），保证 `image/` 与页面的相对路径不变即可。

部署后记得在 `index.html` 中修改 **`SHARE_PUBLIC_ORIGIN`**，与实际上线域名一致。

## 免责声明

本测试仅供娱乐，不构成心理诊断、职业建议或任何专业意见。答题与记录默认保存在用户本机浏览器，不上传服务器（以当前静态页逻辑为准）。
