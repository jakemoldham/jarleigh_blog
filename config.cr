require "kemal"
require "kilt/slang"
require "db"
require "mysql"
require "active_record"
require "mysql_adapter"

require "./src/macros/*"
require "./src/models/*"
require "./src/jarleigh.cr"
require "./src/controllers/*"

ENV["MYSQL_HOST"] = "localhost"
ENV["MYSQL_PORT"] = "3306"
ENV["MYSQL_USER"] = "root"
ENV["MYSQL_DATABASE"] = "jarleigh_blog"

File.read_lines(".env").each do |line|
  key, value = line.strip.split "="
  ENV[key] = value
end

Kemal.config.port = ENV.fetch("PORT", "3000").to_i
