---
title: Projects
---

# Projects

Here are some things I've made.

<div>
  {% for project in site.projects %}
    <article>
      <a href="{{ project.url }}"><h3>{{ project.name }}</h3></a>
      <figure>
        <img src="{{ project.thumbnail_url }}" alt="{{ project.title }}" />
        <figcaption>{{ project.excerpt | remove_links  }}</figcaption>
      </figure>
    </article>
  {% endfor %}
</div>
