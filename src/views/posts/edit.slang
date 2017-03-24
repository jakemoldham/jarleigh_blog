h1 Edit the post!
form action="/posts/update/#{post.id}" method="put"
  input type="text" name="title" placeholder="title"
  input type="text" name="body" placeholder="body"
  input type="submit" value="Send"
