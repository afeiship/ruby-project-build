#!/usr/bin/env ruby
require 'net/sftp'
require 'yaml'
require 'project_path'

ROOT_PATH = ProjectPath.discover_root;


class RubyProjectBuild
  def self.tt
    puts ProjectPath.discover_root
  end

  def m1
    puts 'm1 exec!'
  end
end

puts RubyProjectBuild.tt



## prepare:
# gem install net-sftp
## load config:

# ROOT_PATH = File.dirname(__FILE__);
# config = YAML.load(File.open("#{ROOT_PATH}/config/server.yaml"))
