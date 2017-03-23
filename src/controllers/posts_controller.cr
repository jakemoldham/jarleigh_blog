get "/posts" do
  render("src/views/posts/index.slang") 
end

post "/posts" do

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
