# 竖版手帐地图 Skill（分发版）

把任意行程、路书、差旅安排，做成**竖版、手机一屏可读**的手写贴纸风单页 HTML 地图。

> 本包不含任何真实地点、日期、人名、班次、酒店信息，可安全对外分发。

---

## 一、支持的输入方式

不用手动整理成表格，把下面任意一种直接丢给助手即可：

| 形式 | 说明 |
|---|---|
| 📷 图片 | 行程截图、手机拍的行程单 PDF 页面都可以 |
| 📄 PDF | 行程安排 PDF、路书、差旅单 |
| 📊 Excel / CSV | 行程表格文件 |
| 📝 纯文字 | 「第一天飞某地，第二天……」这样口述也行 |

助手会先把行程抽取成**站点表**给你核对，确认后再出图。表格里没有的距离、时长、地点等信息**不会编造**，会留占位并在交付时列出「待确认清单」。

---

## 二、安装（4 选 1）

### 方式 A：从 GitHub 一键装（推荐）

```bash
git clone https://github.com/shirley9889/journal-trip-map.git
cd journal-trip-map
bash install.sh          # Windows 双击 install.bat
```

### 方式 B：一键脚本

| 系统 | 操作 |
|---|---|
| Windows | 双击 `install.bat` |
| macOS / Linux / Git-Bash | `bash install.sh` |

脚本会把 skill 复制到 `~/.codebuddy/skills/journal-trip-map/`；已存在则自动备份为 `journal-trip-map.bak-<时间戳>`。

### 方式 C：手动复制（最稳）

1. 解压 zip
2. 把 `skills/journal-trip-map/` 整个文件夹复制到：
   - Windows：`C:\Users\<你的用户名>\.codebuddy\skills\`
   - macOS / Linux：`~/.codebuddy/skills/`
3. 最终路径应为 `~/.codebuddy/skills/journal-trip-map/SKILL.md`

### 方式 D：整包作为插件安装

把 `journal-trip-map-plugin` 目录（含 `.codebuddy-plugin/`）放到客户端的本地插件目录 `~/.codebuddy/local_plugins/journal-trip-map/`。
适合以后往同一个包里塞多个 skill。

**装完请重启客户端 / 新开一个会话**，skill 才会被加载。

---

## 三、验证是否生效

新开会话后直接说：

> 帮我做一张竖版手帐地图，行程如下：……

若助手按「页眉 → 地图 → 每日路线 → 方位速读 → 图例 → 页脚」的版式输出单文件 HTML，即已生效。

---

## 四、效果示例

一张真实的产出（10 天西藏环线，已脱敏：不含航班号、确认码、具体日期）：

![封面](examples/xhs/00-cover.png)

| 页 | 内容 |
|---|---|
| [01](examples/xhs/01.png) | 页眉 + 路线总览上段 |
| [02](examples/xhs/02.png) | 路线下段 + 海拔策略 |
| [03](examples/xhs/03.png) | 行程前半（逐日卡片） |
| [04](examples/xhs/04.png) | 行程后半 |
| [05](examples/xhs/05.png) | 收尾 + 图例 |

源文件：[`examples/tibet-loop-sample.html`](examples/tibet-loop-sample.html)

---

## 五、包内结构

```
journal-trip-map-plugin/
├── .codebuddy-plugin/plugin.json     # 插件清单（名称/描述/关键词）
├── install.sh / install.bat          # 一键安装脚本
├── README.md                         # 本文件
├── examples/                         # 成品示例（脱敏）+ 小红书配图
└── skills/journal-trip-map/
    ├── SKILL.md                      # Skill 定义：触发条件、流程、版式规范、自检清单
    ├── templates/journal-map-portrait.html   # 通用竖版画版（80 个占位符）
    └── references/svg-layout-notes.md        # SVG 坐标骨架、增删点位算法、故障排查表
```

---

## 六、使用要点

- **不编造数据**：原始行程里没有的距离、时长、地点，一律留占位，并列出「待确认清单」
- **语言跟随你**：你用中文，输出就全中文；需要英文版时说一声
- 地图上的编号圆钉必须与下方清单一一对应
- 涉及中国行政区划轮廓时，台湾、海南必须绘入中国版图

---

## 七、卸载 / 更新

- **卸载**：删除 `~/.codebuddy/skills/journal-trip-map/` 目录
- **更新**：重新运行安装脚本即可（旧版本会自动备份）

## 八、许可

MIT。可自由分发、修改、内部使用。
