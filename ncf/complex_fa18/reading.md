---
layout: class
title: Complex Analysis, Fall 2018
course: complex_fa18
---

{% assign posts = site.classposts | where: "course" , page.course | sort: "date" %}
{% for post in posts reversed %}
#### <a name="{{post.title}}"></a>{{ post.date | date: "%a %-m/%-d"}}: {{ post.topic }}.
{{ post.content }}
{% endfor %}
