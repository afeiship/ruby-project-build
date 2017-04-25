#!/usr/bin/env ruby
require 'net/sftp'
require 'yaml'
require 'project_path'
require 'pathname'

ROOT_PATH = ProjectPath.discover_root;

class RubyProjectBuild
  def self.loadYAML inPath
    path = File.join ROOT_PATH,inPath
    YAML.load(File.read(path))
  end

  def self.onConnect inConfig
    Net::SFTP.start(inConfig['host'], inConfig['username'], password: inConfig['password'],) do |sftp|
        yield sftp
    end
  end
end

# p ARGV.options;

# CONFIG = RubyProjectBuild.loadYAML 'config/server.yaml'

# RubyProjectBuild.onConnect CONFIG['account'] do | sftp |
#    p sftp.inspect
# end

# p RubyProjectBuild.new
## prepare:
# gem install net-sftp
## load config:

# ROOT_PATH = File.dirname(__FILE__);
# config = YAML.load(File.open("#{ROOT_PATH}/config/server.yaml"))
