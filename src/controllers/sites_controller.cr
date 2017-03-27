get "/" do |env|
  spotlights = Post.where({"spotlight" => 1})
  rend("index", "sites")                 
end
