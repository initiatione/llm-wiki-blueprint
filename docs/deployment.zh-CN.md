# 部署方式

这份文档提供两种推荐的部署方式：

1. 手动部署
2. 通过 Claude Code / Codex / 其他智能体进行引导部署

两种方式都遵守同样的总体结构：

- 基座工作流仓库
- 私有 live Vault
- 可选增强层

## 1. 手动部署

### 步骤 1：创建一个新的 Vault 目录

先确定你的真实私有知识库目录，例如：

```text
<你的 Vault 路径>
```

### 步骤 2：复制蓝图结构

把本仓库中的这些内容复制到你的新 Vault：

- 正式知识目录
- `_raw/`
- `_drafts/`
- `_review/`
- `_quarantine/`
- `_archives/`
- `_meta/`
- `templates/`
- `README.md`
- `WIKI.md`
- `AGENTS.md`
- `Home.md`
- `index.md`
- `log.md`
- `.manifest.json`

### 步骤 3：在 Obsidian 中打开该目录

用 Obsidian 打开这个新 Vault。

### 步骤 4：安装或启用推荐插件

推荐插件：

- Dataview
- Templater
- Linter
- Git
- BRAT

你也可以继续使用你偏好的执行型智能体或插件。

### 步骤 5：配置执行层

选择一个执行层来操作这个 Vault，例如：

- Claude Code
- Codex
- 其他具备文件操作能力的智能体

执行层应该操作你的私有 Vault，而不是直接把本蓝图仓库当 live Vault。

### 步骤 6：开始使用

1. 新资料先放 `_raw/`
2. 让 AI 整理到 `_drafts/`
3. 在 `_meta/review/` 里查看审稿状态
4. 通过后再进入正式知识区

## 2. 智能体引导部署

这份蓝图也适合让 Claude Code、Codex 等智能体帮你部署。

### 目标

让智能体帮助你：

- 创建目标 Vault 结构
- 复制或重建蓝图文件
- 配置工作流
- 最后向你解释整个结构

### 推荐引导提示词

你可以让智能体读取本仓库后执行：

```text
请把这个仓库作为 llm-wiki 蓝图，帮我部署到一个新的私有 Obsidian Vault。

要求：
1. 按这个蓝图创建 Vault 结构。
2. 保留 review-gated 工作流：_raw -> _drafts -> _meta/review -> 正式知识区。
3. 保留模板、治理文档和 taxonomy 结构。
4. 不要把这个蓝图仓库本身当成我的 live 私有 Vault。
5. 完成后用简单语言告诉我最终结构怎么用。
```

### Claude Code / Codex / 类似智能体的推荐读取顺序

让它按这个顺序读：

1. `README.md`
2. `WIKI.md`
3. `AGENTS.md`
4. `index.md`

然后再去目标路径创建私有 Vault。

### 部署后检查

确认这些目录和文件已经存在：

- `_raw/`
- `_drafts/`
- `_meta/review/`
- 正式知识目录
- `templates/`
- `Home.md`

## 3. 重要分离原则

不要把本开源仓库直接当作你的唯一 live 私有知识库。

更推荐的模式是：

- 本仓库 = 蓝图 / 框架层
- 你的私有 Vault = 真实知识层

## 4. 可选增强层

如果你需要：

- review-flow 包装
- 管理面板插件
- 外围自动化

建议把这些放在单独的增强层，而不是污染：

- 基座工作流仓库
- live 私有 Vault

