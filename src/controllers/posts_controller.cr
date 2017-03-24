get "/posts" do
  posts = Post.all
  rend "posts/index"
end

get "/posts/new" do
  rend "posts/new"
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
  rend "posts/show" 
end

get "/post/edit/:id" do |env|
  post = Post.get(env.params.url["id"])
  rend "posts/edit"
end

get "/posts/update/:id" do |env|
  post = Post.get(env.params.url["id"])
  post.title = env.params.query["title"].to_s
  post.body = env.params.query["body"].to_s
  post.update
  env.redirect "/posts/#{env.params.url["id"]}"
end

delete "/post/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  post.delete
end
