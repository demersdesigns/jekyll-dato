---
layout: default
title: "Products"
permalink: /products/
---

# Catalog
<ul>
  {% for product in site.products %}
  <li><a href="{{ product.url }}">{{ product.title }}</a></li>
  {% endfor %}
</ul>