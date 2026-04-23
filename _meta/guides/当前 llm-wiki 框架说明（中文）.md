---
title: 当前 llm-wiki 框架说明（中文）
category: guide
tags: [guide, chinese, architecture, llm-wiki]
sources: []
created: 2026-04-23
updated: 2026-04-23
primary_domain: ops
context: learning
status: canonical
---

# 当前 llm-wiki 框架说明（中文）

这份文档用中文解释本蓝图仓库的整体结构。

## 1. 这套框架在做什么

这不是一个普通的笔记仓库，也不是一个单纯的聊天归档系统。

它要做的是：

**把原始材料编译成可以长期维护的知识库。**

## 2. 当前建议的主要流程

核心流程是：

```text
_raw -> _drafts -> _meta/review -> 正式知识区
```

也就是：

1. 新内容先进入 `_raw`
2. AI 或工作流先整理成 `_drafts`
3. 在 `_meta/review` 记录状态和反馈
4. 通过后再进入正式知识区

## 3. 正式知识区如何划分

建议使用：

- `concepts/`
- `entities/`
- `skills/`
- `references/`
- `synthesis/`
- `projects/`

其中：

- `references/` 适合单源整理稿
- `skills/` 适合可复用流程
- `synthesis/` 适合跨来源综合

## 4. 系统目录怎么理解

- `_raw/`：原始资料入口
- `_drafts/`：候选稿
- `_meta/review/`：审稿状态
- `_quarantine/`：隔离区
- `_archives/`：归档区
- `_meta/`：taxonomy、治理、架构、看板等系统说明

## 5. 这套框架的核心特点

- 保守发布，不直接把新内容写入正式区
- review 先行
- 用户负责最终判断
- AI 负责整理、起草、链接和结构维护

## 6. 适合谁

适合：

- 个人知识库
- 项目经验沉淀
- 多来源资料整理
- AI 协作知识管理

## 7. 英文与中文文档的关系

推荐做法是：

- 英文文档保留给智能体和国际用户
- 中文文档作为人的导览层

不需要强行把所有英文文件改成中文。

