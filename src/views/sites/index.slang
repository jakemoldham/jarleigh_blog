.index-nav
  h1 The::Code::Blog
  h1.glyphicon.glyphicon-align-left style="padding-left:10px;"
.welcome-statement
  h4 We hope you enjoy our code!
.container
  // NOTE add up to 6 spotlighted blogs.
  .row
    - spot.each do |s|
      .col-md-4.col-sm-6.col-xs-12
        .card
          .title
            = s.title
          .description
            = s.description
          .posts-show-btn
            a href="/posts/#{s.id}"
              .posts-link
                | GO TO POST

  .row
    .index-posts
      h1 All of our code blogs, Capisce.
      .post-list
        - posts.each do |post|
          a href="/posts/#{post.id}"
            = post.title
