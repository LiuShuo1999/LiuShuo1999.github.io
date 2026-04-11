---
layout: archive
title: "Notes"
permalink: /notes/
author_profile: true
---

{% include base_path %}

这里放公开版研究笔记。内容来自本地 Obsidian 笔记，但发布前会做筛选、改写和链接调整，因此不会与本地版本完全一致。

{% assign notes_sorted = site.notes | sort: "date" | reverse %}
{% for post in notes_sorted %}
  {% include archive-single.html %}
{% endfor %}
