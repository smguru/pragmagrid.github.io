---
layout: default
title: Steering Committee
categories:
 - "steering-list"
---

{% assign pages = site.["people"] | sort: "title" %}

<div class="border">
  <h4>STEERING COMMITTEE</h4>
</div>
<ul class="posts">
  {% for post in pages %}
    {% if post.categories[0] == 'steering' %}
      <li><a href="{{ post.url }}" title="{{ post.title }}">{{post.firstname}} {{ post.title }}</a> - {{post.affiliation}}
      </li>
    {% endif %}
  {% endfor %}
</ul>
