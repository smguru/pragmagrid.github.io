---
layout: default
title: Researchers
categories:
 - "researcher-list"
---

{% assign pages = site.["people"] | sort: "title" %}

<div class="border">
  <h4>RESEARCHERS</h4>
</div>

<ul class="posts">
  {% for post in pages %}
    {% if post.categories[0] == 'researcher' or post.categories[1] == 'researcher' %}
      <li><a href="{{ post.url }}" title="{{ post.title }}">{{post.firstname}} {{ post.title }}</a> - {{post.affiliation}}
      </li>
    {% endif %}
  {% endfor %}
</ul>
