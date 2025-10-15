---
layout: default
notitle: true
title: Our Research

# To add research topics, create a .md (markdown) file in the _concepts folder, then
# set it's order in the header portion (i.e. here). Store any relevant image files in
# the img folder, and link as shown in the already-included examples.

# To add projects, do the same, but in the _projects folder. Adding header images is a little
# more involved, but still easy and shown in the USCOMP example.
---

<div class="row">
  <div class="col-12">
    <h2>What We Do</h2>
    {% assign sorted_topics = site.concepts | sort: "order" %}
    {% for topic in sorted_topics %}
      <h4>{{ topic.title }}</h4>
      <p>{{ topic.content }}</p>
    {% endfor %}
  </div>
</div>


<div class="row">
  <div class="col-12">
    <h2>Current & Past Projects</h2>
  </div>
</div>
<div class="row">
  {% assign projects_by_date = site.projects | sort: 'last-updated', 'first' %}
  {% assign projects_by_date = projects_by_date | reverse %}
  {% for p in projects_by_date %}
    {% include project-card.html project=p %}
  {% endfor %}
</div>
