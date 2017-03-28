.index-nav
  h1 = post.title
  a href="/"
    .home-nav-btn.hidden-xs
      | HOME
.container
  .post-card
    p Written by: 
      | #{post.author}
    .post-desc = post.description
    .post-body == Markdown.to_html(post.body.to_s)

    #disqus_thread
    <script>(function() { var d = document, s = d.createElement('script'); s.src = 'https://jarleigh-blog-com.disqus.com/embed.js'; s.setAttribute('data-timestamp', +new Date()); (d.head || d.body).appendChild(s);})();</script>

