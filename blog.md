---
layout: default
notitle: true
title: Blog

# Currently unused. To include this page on the navbar, add it to the
# _config.yml file, then posts will go in the _posts directory. As of now,
# it treats news and blogs identically. An "if" statement can be added to the
# loop to change that (something like {% if post.type == blog %} ... {% endif %} *untested)
# btw, a "type: blog" will need to be added to the header all posts if this is implemented
---

<ul class="news list-unstyled">
{% for post in site.posts %}
    {% include news-item.html item=post %}
{% endfor %}
</ul>
