---
layout: class
title: Calculus III, Fall 2016
---

{% assign posts = site.classposts | where: "course" , "calc3_fa16" | sort: "date" %}
{% for post in posts reversed %}
#### <a name="{{post.title}}"></a>{{ post.date | date: "%a %-m/%-d"}}: {{ post.topic }}.
{{ post.content }}
{% endfor %}
