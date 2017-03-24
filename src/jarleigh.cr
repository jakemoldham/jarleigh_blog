macro rend(filename)
  render "src/views/#{{{filename}}}.slang", "src/views/layouts/layout.slang"
end

macro get_param(param)
  env.params.query["#{{{param}}}"].to_s
end
