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

put "/posts/:id" do

end

delete "/post/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  post.delete
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

put "/posts/edit/:id" do |env|
  post = Post.get(env.params.url["id"])
  post.title = env.params.query["title"].to_s
  post.body = env.params.query["body"].to_s
  post.update
end

delete "/post/delete/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  post.delete
>>>>>>> Stashed changes
end
