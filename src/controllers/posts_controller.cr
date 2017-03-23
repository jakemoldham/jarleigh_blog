get "/posts" do
  posts = Post.all
  render("src/views/posts/index.slang") 
end

get "/posts/new" do
  render("src/views/posts/new.slang")
end

post "/posts" do |env|
  # post = Post.create
  # post.title = env.params.url["title"]
  # post.body = env.params.url["body"]
  # post.update
  env.redirect "/posts"
end

get "/posts/:id" do |env|
  id = env.params.url["id"]
  post = Post.get(id)
  render("src/views/posts/show.slang")
end

put "/posts/:id" do

end

delete "/post/:id" do

end
