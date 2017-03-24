macro rend(filename, folder = __FILE__)
  render "./src/views/#{{{folder.split("/").last.gsub(/\_controller\.cr/, "")}}}/#{{{filename}}}.slang", "src/views/layouts/layout.slang"
end

macro get_param(param)
  env.params.query["#{{{param}}}"].to_s
end
