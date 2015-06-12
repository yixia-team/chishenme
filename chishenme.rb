#!/usr/bin/env ruby
# 吃什么－专治各种选择障碍

require "optparse"
require "yaml"

params = ARGV.getopts("", "menu:~/.menu.yml")
config_path = File.expand_path(params["menu"])
begin
  menu = YAML.load_file(config_path)
  menu = menu["menu"].split
rescue
  puts "你丫还没填好菜单吧！" and abort
end

puts "今天去：#{menu[rand(menu.length)]}"
exit
