macro rend(filename)
  render "src/views/#{{{filename}}}.slang", "src/views/layouts/layout.slang"
end
