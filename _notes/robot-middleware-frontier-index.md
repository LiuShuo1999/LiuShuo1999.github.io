---
title: "机器人中间件前沿探索索引"
date: 2026-04-11
permalink: /notes/robot-middleware-frontier-index/
excerpt: "机器人中间件公开版研究入口，聚焦 ROS 2、Dora、DDS、Zenoh 与安全主线。"
tags:
  - robotics
  - middleware
  - ros2
  - dora
  - security
toc: true
---

# 说明

这是一份面向公开博客的索引页，用来汇总我在机器人中间件方向上的持续研究。

博客侧只放经过筛选后的公开版内容；本地笔记会保留更细的过程性记录、内部链接和后续待整理材料。因此，博客上的结构会更简洁，链接也会按网站结构重新组织。

## 当前研究主线

- `ROS 2 / DDS`：围绕默认网络体验、executor、公平性、可预测性、vendor 选择与工业生产化展开。
- `Dora`：围绕 roadmap 替代入口、ROS 2 bridge、分布式可观测性、验证测试与平台化边界展开。
- `Zenoh`：围绕跨网络数据空间、router/topology、与 ROS 2 的关系及安全边界展开。
- `安全主线`：围绕 SROS2 工程化、enclave 与 launch 边界、供应链与密钥工件威胁模型展开。

## 当前公开整理计划

### 主线与方法

- 机器人中间件学术界与工业界研究计划
- 机器人中间件学术界与工业界进展趋势与未来

### 公开问题与路线图

- 机器人中间件官方公开问题与长期难题
- 机器人中间件 roadmap 与公开规划入口总表

### ROS 2 / DDS 主轴专题

- ROS 2 网络体验与默认可用性
- ROS 2 graph introspection 与事件通知
- ROS 2 executor 性能、公平性与可预测性
- ROS 2 多机器人 partition 与发现边界
- DDS vendor 对比
- 工业级 ROS 2 生产化路线
- DDS vs Zenoh 场景化选择
- micro-ROS 研究笔记

### Dora 专题

- Dora roadmap 替代入口与公开规划
- Dora-ROS2 bridge 稳定性与互操作边界
- Dora 分布式通信与运行时可观测性
- Dora 验证测试与 project check
- Dora 包管理与多语言生产化边界

### 双视角与安全

- 机器人中间件 ROS 2 与 Dora 双视角补充
- 机器人中间件 ROS 2 与 Dora 安全双视角补充
- 机器人中间件安全与可信边界
- ROS 2 安全可用性与 SROS2 工程化
- ROS 2 enclave 与 launch 安全建模
- ROS 2 供应链与密钥工件威胁模型

### 研究笔记

- Zenoh 研究笔记
- HORUS 研究笔记
- Copper 研究笔记（待整理）
- Dora-HORUS-Copper 对照（待整理）

## 当前发布策略

- 先发布索引页和少量高价值专题页。
- 每次只同步明确筛选过、适合公开的笔记。
- 本地 Obsidian 内链不会直接照搬到博客，而是改成网站可访问链接。
- 对于仍在快速变化的专题，会优先发布综述页，而不是过早拆成很多细页。

## 下一步

- 优先把 `ROS 2 / DDS` 主轴和安全主线中的核心专题逐步公开。
- 优先补足那些已经形成稳定判断、且适合公开展示的专题页。
- 在博客侧保持“少而稳”的结构，避免把本地研究过程原样暴露。
