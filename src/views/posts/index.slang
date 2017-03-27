- posts.each do |post|
  a href="/posts/#{post.id}"
    = post.title
  span = post.author
  a href="/post/edit/#{post.id}"
    = "edit"
  a href="/posts/delete/#{post.id}"
    = "delete"
  br

a href="/posts/new"
  h1 NEW POST
