---
layout: default
notitle: true
title: Home

# groups of columns of {roles: list, width: num, image: bool}
role-tables:
- - roles: [faculty, postdoc, staff]
    width: 4
    image: true
  - roles: [grad]
    width: 8
    image: true
- - roles: [collab, ugrad, ugrad-alum]
    width: 5
    image: false
  - roles: [alum]
    width: 7
    image: false

---

<div class="jumbotron">
<blockquote>
<p><em>"Measure what can be measured, and make measurable what cannot be"</em>— Galileo Galilei</p>
</blockquote>
        <p>
        The <b>CMMR Lab</b> at <b>Michigan Technological University</b> aproaches the
        fundamentally multi-scale nature of composites through molecular simulation, 
        applying essential data and structural insights into component design and manufacture.
        We work closely with our colleauges at Florida State and Columbia University to test,
        design, and validate next-generation composite materials.
        </p>
</div>

<section>
    <h2>News</h2>
    <ul class="news list-unstyled">
        {% for post in site.posts limit: site.front_page_news %}
            {% include news-item.html item=post %}
        {% endfor %}
    </ul>
    {% assign numposts = site.posts | size %}
    {% if numposts >= 1 %}
        <p>
            <span class="fa fa-fw fa-history"></span>
            <a href="{{ site.base }}/blog.html">Older posts&hellip;</a>
        </p>
    {% endif %}
</section>

<!-- <section>
    <h2>Research</h2>
    <div class="row">
        {% comment %}
        Sort the projects by date, putting those without dates last
        {% endcomment %}
        {% assign projects_by_date = site.projects | sort: 'last-updated', 'first' %}
        {% assign projects_by_date = projects_by_date | reverse %}
        {% for p in projects_by_date %}
            {% if p.status != "inactive" %}
                {% include project-card.html project=p %}
            {% endif %}
        {% endfor %}
    </div>
</section> -->

<div id="people">
    <h2>People</h2>
    {% for role-table in page.role-tables %}
        <section class="people row justify-content-between">
            {% for role-column in role-table %}
                <div class="col-md-{{ role-column.width }}">
                    {% for role in role-column.roles %}
                        {% include role-people.html role=role image=role-column.image %}
                    {% endfor %}
                </div>
            {% endfor %}
        </section>
    {% endfor %}
</div>
