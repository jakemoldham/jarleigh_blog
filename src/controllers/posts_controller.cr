get "/posts" do
  posts = Post.all
  rend("index", "posts")
end

get "/posts/new" do
  rend("new", "posts")
end

get "/posts/create" do |env|
  post = Post.create({ "title" => "#{env.params.query["title"].to_s}",
                        "body" => "#{env.params.query["body"].to_s}",
                    })
  env.redirect "/posts"
end

get "/posts/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  rend("show", "posts")
end

get "/post/edit/:id" do |env|
  post = Post.get(env.params.url["id"])
  rend("edit", "posts")
end

get "/posts/update/:id" do |env|
  post = Post.get(env.params.url["id"])
  post.title = env.params.query["title"].to_s
  post.body = env.params.query["body"].to_s
  post.update
  env.redirect "/posts/#{env.params.url["id"]}"
end

get "/posts/delete/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  post.delete
  env.redirect "/posts"
end

