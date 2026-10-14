# journal-trip-map — 英文竖版手帐地图 Skill（分发版）

把任意行程 / 路书 / 差旅安排，做成**竖向、手机一屏可读**的手写贴纸风单页 HTML 地图。

> 本包不含任何真实地名、日期、人名、车次、酒店信息，可安全对外分发。

---

## 一、安装（4 选 1）

### 方式 A：从 GitHub 一键装（推荐）

```bash
git clone https://github.com/shirley9889/journal-trip-map.git
cd journal-trip-map
bash install.sh          # Windows 双击 install.bat
```

### 方式 B：一键脚本（推荐）

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

## 二、验证是否生效

新开会话后直接说：

> 帮我做一张竖版手帐地图（英文），行程如下：……

若助手按「页眉 → 地图 → Today's Route → Quick Orientation → Legend → 页脚」的版式输出单文件 HTML，即已生效。

---

## 三、包内结构

```
journal-trip-map-plugin/
├── .codebuddy-plugin/plugin.json     # 插件清单（名称/描述/关键词）
├── install.sh / install.bat          # 一键安装脚本
├── README.md                         # 本文件
└── skills/journal-trip-map/
    ├── SKILL.md                      # Skill 定义：触发条件、流程、版式规范、自检清单
    ├── templates/journal-map-portrait.html   # 通用竖版画版（80 个占位符）
    └── references/svg-layout-notes.md        # SVG 坐标骨架、增删点位算法、故障排查表
```

---

## 四、使用要点

- **不编造数据**：原始行程里没有的距离 / 时长 / 店名，一律留占位，并在回复里列出「待确认清单」
- 地名默认保留小号中文对照（方便当地打车/导航）；要纯英文可要求去掉
- 地图上的编号路钉必须与下方步骤清单一一对应
- 涉及中国行政区划轮廓时，台湾、海南必须绘入中国版图

---

## 五、卸载 / 更新

- **卸载**：删除 `~/.codebuddy/skills/journal-trip-map/` 目录
- **更新**：重新运行安装脚本即可（旧版本会自动备份）

## 六、许可

MIT。可自由分发、修改、内部使用。
