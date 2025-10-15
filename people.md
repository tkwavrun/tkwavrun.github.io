---
layout: default
title: People

picture-role-groups:
- {roles: [faculty, postdoc], width: 5}
- {roles: [grad, staff], width: 5}

no-picture-role-groups:
- {roles: [collab, ugrad, ugrad-alum], width: 5}
- {roles: [alum], width: 5}

###########################
# To add/edit lab members, modify the _data/people.yml file, not here
###########################
---

<section class="people">
  {% for role-group in page.picture-role-groups %}
    {% for role in role-group.roles %}
      {% include role-people.html role=role image=true %}
    {% endfor %}
  {% endfor %}
</section>

