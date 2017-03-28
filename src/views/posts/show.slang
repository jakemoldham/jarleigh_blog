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
