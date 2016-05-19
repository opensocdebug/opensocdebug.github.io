---
title: The Open SoC Debug Blog
---

<h1>The Open SoC Debug Blog</h1>

<p>In our blog we regularly post about the status of the project, things we figured out while working on it and other things that might come to our mind. Please contact us if you want to share your experience with Open SoC Debug, guest posts are always welcome!</p>

{% for post in site.posts %}
  <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
  <p class="osc-blog-meta">by {{ site.authors[post.author].display_name }}, posted on {{ post.date | date_to_long_string }}
  <p>{{ post.excerpt }}</p>
{% endfor %}
