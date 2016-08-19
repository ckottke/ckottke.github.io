---
layout: class
title: Calculus III, Fall 2016
---

{% assign posts = site.classposts | where: "course" , "calc3_fa16" %}
{% for post in posts reversed %}
#### <a name="post.name"></a>{{ post.date | date: "%a %-m/%-d"}}: {{ post.topic }}.
{{ post.content }}
{% endfor %}
