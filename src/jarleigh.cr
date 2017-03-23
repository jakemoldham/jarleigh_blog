macro rend(filename)
  render "src/views/site/#{{{filename}}}.slang", "src/views/layouts/layout.slang"
end
