require "kemal"
require "kilt/slang"
require "db"
require "mysql"
require "active_record"
require "mysql_adapter"
require "micrate"

require "./src/macros/*"
require "./src/jarleigh.cr"

File.read_lines(".env").each do |line|
  key, value = line.strip.split "="
  ENV[key] = value
end

