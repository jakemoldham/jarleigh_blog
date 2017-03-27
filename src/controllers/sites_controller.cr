get "/" do |env|
  posts = Post.all
  spot = Post.where({ "spotlight" => true })
  rend "index"                   
end
