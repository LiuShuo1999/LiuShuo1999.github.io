---
layout: archive
title: "机器人中间件 Notes"
permalink: /notes/
author_profile: true
toc: true
---

{% include base_path %}

# 说明

这里先放机器人中间件方向已经整理过、适合公开的笔记。现在还是沿着两条线往下记：`前沿探索` 和 `基础笔记`。

`前沿探索` 这一条，主要是顺着学术界和工业界两个视角往下看：现在大家在推进什么、争论什么、卡在什么地方，项目后面大概会往哪边走。

`基础笔记` 这一条，主要是把概念、机制、架构、接口关系和实现脉络慢慢补齐。整理时会尽量保持统一结构，后面继续扩展和横向对照都会方便一些。

## 前沿探索

- 这一部分会把学术界的关注点、工业界的落地路径，以及官方材料里反复出现的长期难题放在一起看。
- 现在先按这几个主题往下整理：
  - `主线与方法`
  - `公开问题与路线图`
  - `ROS 2 / DDS` 主轴专题
  - `Dora` 专题
  - `双视角与安全`
  - `图谱与资料`
  - `研究笔记`
- 已整理的公开笔记：
  - [机器人中间件：roadmap 与公开规划入口总表](/notes/robot-middleware-roadmap-planning-index/)

## 基础笔记

- 这一部分更偏概念、机制、架构、实现和系统理解。
- 接下来会优先补这些主题：
  - `ROS 2`：节点、通信模型、executor、QoS、discovery、`rmw` 分层。
  - `DDS`：核心概念、QoS 语义、发现机制、vendor 差异，以及和 `ROS 2` 的关系。
  - `Zenoh`：数据空间、router、query / pub-sub、跨网络拓扑，以及和 `DDS / ROS 2` 的连接方式。
  - `Dora`：dataflow、operator、runtime、桥接机制，以及分布式执行方式。
  - `HORUS`：registry、图式组织方式、运行机制，以及与现有机器人系统的衔接。
  - `Copper`：任务编排、运行时模型、Rust 工程结构，以及系统实现路径。
