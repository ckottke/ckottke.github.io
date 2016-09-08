---
layout: class
title: Functional Analysis, Fall 2016
---

{% assign posts = site.classposts | where: "course" , "functional_fa16" %}
{% for post in posts reversed %}
#### <a name="{{post.title}}"></a>{{ post.date | date: "%a %-m/%-d"}}: {{ post.topic }}.
{{ post.content }}
{% endfor %}
