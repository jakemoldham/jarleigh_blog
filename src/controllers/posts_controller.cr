# Index
get "/posts" do
  posts = Post.all
  rend("index", "posts")
end

# New
get "/posts/new" do
  rend("new", "posts")
end

# Create
post "/posts" do |env|
  title = env.params.body["title"].as(String)
  body = env.params.body["title"].as(String)
  post = Post.create({ "title" => "#{title}",
                        "body" => "#{body}",
                     })
  env.redirect "/posts"
end

# Show
get "/posts/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  rend("show", "posts")
end

# Edit
get "/post/edit/:id" do |env|
  post = Post.get(env.params.url["id"])
  rend("edit", "posts")
end

# Update
get "/posts/update/:id" do |env|
  post = Post.get(env.params.url["id"])
  post.title = env.params.query["title"].to_s
  post.body = env.params.query["body"].to_s
  post.update
  env.redirect "/posts/#{env.params.url["id"]}"
end

# Delete
get "/posts/delete/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  post.delete
  env.redirect "/posts"
end

