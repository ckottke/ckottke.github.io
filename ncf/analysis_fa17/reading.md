---
layout: mooreclass
title: Real Analysis I, Fall 2017
course: analysis_fa17
---

{% assign posts = site.classposts | where: "course" , page.course | sort: "date" %}
{% for post in posts reversed %}
#### <a name="{{post.title}}"></a>{{ post.date | date: "%a %-m/%-d"}}:
{{ post.content }}
{% endfor %}
