---
layout: class
title: Distribution Theory, Spring 2019
course: distributions_sp19
---

{% assign posts = site.classposts | where: "course" , page.course | sort: "date" %}
{% for post in posts reversed %}
#### <a name="{{post.title}}"></a>{{ post.date | date: "%a %-m/%-d"}}: {{ post.topic }}.
{{ post.content }}
{% endfor %}
