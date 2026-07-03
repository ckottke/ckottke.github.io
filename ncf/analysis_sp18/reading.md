---
layout: mooreclass
title: Real Analysis II, Spring 2018
course: analysis_sp18
---

{% assign posts = site.classposts | where: "course" , page.course | sort: "date" %}
{% for post in posts reversed %}
#### <a name="{{post.title}}"></a>{{ post.date | date: "%a %-m/%-d"}}:
{{ post.content }}
{% endfor %}
