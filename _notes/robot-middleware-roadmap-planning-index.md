---
title: "机器人中间件：roadmap 与公开规划入口总表"
date: 2026-04-11
permalink: /notes/robot-middleware-roadmap-planning-index/
excerpt: "整理 ROS 2、Dora、Zenoh、HORUS、Copper 的 roadmap 或 roadmap 替代入口，用来观察机器人中间件项目的后续演进方向。"
tags:
  - robotics
  - middleware
  - roadmap
  - ros2
  - dora
toc: true
---


## 各项目 roadmap 或 roadmap 替代入口总表

| 项目       | 是否有独立 roadmap     | 最优先入口                                                                          | 次优先入口                                                                                                                                                                                                                                         | 入口说明                                                                            | 当前判断                                                             |
| -------- | ----------------- | ------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| `ROS 2`  | 有                 | [ROS 2 Roadmap](https://docs.ros.org/en/rolling/The-ROS2-Project/Roadmap.html) | [ROS 2 Feature Ideas](https://docs.ros.org/en/rolling/The-ROS2-Project/Feature-Ideas.html)                                                                                                                                                    | 官方直接用 `planned work` 描述 roadmap，并把 roadmap、feature ideas、design、project board 串起来 | 这是五个项目里最标准、最正式的 roadmap 入口                                         |
| `Dora`   | 暂未发现独立 roadmap 页面 | [dora-rs Discussions](https://github.com/orgs/dora-rs/discussions)             | [GSoC 2026](https://github.com/dora-rs/dora/wiki/GSoC_2026)、[GSoC 2025](https://github.com/dora-rs/dora/wiki/GSoC_2025)                                                                                                                       | `Discussions` 持续承接 Ideas / Q&A / Status Update，GSoC wiki 则直接列年度项目方向               | `Discussions + GSoC wiki + 规划型 issues` 基本就是 Dora 当前的 roadmap 替代层   |
| `Zenoh`  | 有                 | [Zenoh public roadmap](https://github.com/eclipse-zenoh/roadmap)               | [ROS 2 Working with Zenoh](https://docs.ros.org/en/ros2_documentation/kilted/Installation/RMW-Implementations/Non-DDS-Implementations/Working-with-Zenoh.html)                                                                                | roadmap 仓库本身就是公开规划入口；ROS 2 官方文档则能补“真实部署体验”这一层                                     | Zenoh 的 roadmap 公开度很高，但真正落地时还要结合 router / discovery 的实际约束一起看       |
| `HORUS`  | 暂未发现独立 roadmap 页面 | [What is HORUS](https://docs.horus-registry.dev/concepts/what-is-horus)        | [Package Management](https://docs.horus-registry.dev/package-management/package-management)、[CLI Reference](https://docs.horus-registry.dev/development/cli-reference)、[ROS2 Bridge](https://docs.horus-registry.dev/development/ros2-bridge) | 官方 docs 的一级主题本身就在暴露平台主线：共享内存、调度、监控、record/replay、包管理、bridge、deploy               | `HORUS` 更像“文档驱动规划”的项目，能看出主线，但没有像 roadmap 那样直接列 `planned / shipped` |
| `Copper` | 有                 | [Copper Roadmap](https://copper-project.github.io/copper-rs/Roadmap/)          | [Copper Release Notes](https://github.com/copper-project/copper-rs/wiki/Copper-Release-Notes)                                                                                                                                                 | roadmap 直接区分 `Shipped / Planned`，release notes 又能反向验证到底推进到了哪里                     | 这是新兴项目里最适合做“规划与进展对照”的一个                                            |

## 几个项目先记住的入口链

### `ROS 2`

- `Roadmap`: <https://docs.ros.org/en/rolling/The-ROS2-Project/Roadmap.html>
- `Feature Ideas`: <https://docs.ros.org/en/rolling/The-ROS2-Project/Feature-Ideas.html>
- `Design`: <https://design.ros2.org/>

先记一句：

> 看 `ROS 2` 的后续方向，先顺着 `Roadmap -> Feature Ideas -> Design` 往下走，再去翻 issue 会更顺。

### `Dora`

- `Discussions`: <https://github.com/orgs/dora-rs/discussions>
- `GSoC 2026`: <https://github.com/dora-rs/dora/wiki/GSoC_2026>
- `GSoC 2025`: <https://github.com/dora-rs/dora/wiki/GSoC_2025>
- `Support Matrix`: <https://dora-rs.ai/docs/guides/support-matrix/>

这几类页面已经能看出不少方向，例如：

- `Package and Dependency Management for Dora Nodes`
- `Distributed State Support for Dora`
- `Dora-studio`
- `Testing Infrastructure`
- `ROSbag Reader Node for Dora`
- `Agentic Dora`

先记一句：

> `Dora` 不是没有规划，而是规划分散在 `Discussions + 年度 GSoC wiki + docs` 里。

### `Zenoh`

- `Roadmap`: <https://github.com/eclipse-zenoh/roadmap>
- `ROS 2 Working with Zenoh`: <https://docs.ros.org/en/ros2_documentation/kilted/Installation/RMW-Implementations/Non-DDS-Implementations/Working-with-Zenoh.html>

先记一句：

> `Zenoh` 的 roadmap 很公开，但如果关心机器人中间件落地，只看 roadmap 还不够，还得一起看它在 ROS 2 场景里的 router / discovery 现实约束。

### `HORUS`

- `What is HORUS`: <https://docs.horus-registry.dev/concepts/what-is-horus>
- `Package Management`: <https://docs.horus-registry.dev/package-management/package-management>
- `CLI Reference`: <https://docs.horus-registry.dev/development/cli-reference>
- `ROS2 Bridge`: <https://docs.horus-registry.dev/development/ros2-bridge>

从官方 docs 当前结构看，`HORUS` 已经非常强调这些方向：

- shared-memory + scheduler
- monitor / doctor / log / topic / node
- record / replay
- package management / registry
- ROS2 bridge
- deploy / remote robot

先记一句：

> `HORUS` 还没有像 `Copper` 或 `ROS 2` 那样给出一页式 roadmap，但 docs 的信息架构已经把平台优先级摆得比较清楚了。

### `Copper`

- `Roadmap`: <https://copper-project.github.io/copper-rs/Roadmap/>
- `Release Notes`: <https://github.com/copper-project/copper-rs/wiki/Copper-Release-Notes>

从官方页面看，`Copper` 很适合用下面这条链观察：

`Roadmap -> Shipped / Planned -> Release Notes`

这条链值得盯着看，是因为它一方面把：

- `Log compression and selection`
- `Parallel Copper Lists`
- `Extensible scheduling hints`
- `Swarm support using Zenoh`
- `MCAP support`

明确列进了 `Planned`，另一方面又能在 release notes 里看到它到底有没有真的往 `distributed runtime` 推。
