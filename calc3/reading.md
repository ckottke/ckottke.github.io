---
layout: class
title: Calculus III, Fall 2016
---


{% for post in site.calc3_fa16 reversed %}
#### {{ post.date | date: "%a %-m/%-d"}}: {{ post.topic }}.
{{ post.content }}
{% endfor %}
