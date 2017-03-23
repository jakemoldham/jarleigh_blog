require "kemal"
require "kilt/slang"
require "db"
require "mysql"
require "active_record"
require "mysql_adapter"

require "./src/macros/*"
require "./src/controllers/*"

File.read_lines(".env").each do |line|
  key, value = line.strip.split "="
  ENV[key] = value
end

