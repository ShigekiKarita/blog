---
layout: page
title: tags
---

<div class="home">

  <ul class="tag-list">
      {% for tag in site.tags %}
      <article>
          <h1 id="tag_{{ tag[0] }}">{{ tag[0] }}</h1>
          <ul>
              {% for post in tag[1] %}
              <li><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></li>
              {% endfor %}
          </ul>
      </article>
      {% endfor %}
  </ul>

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>

</div>
