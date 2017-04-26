#!/usr/bin/env ruby
require 'net/sftp'
require 'yaml'
require 'project_path'
require 'pathname'

require File.join(File.dirname(__FILE__),'config')
require File.join(File.dirname(__FILE__),'sftp')

ROOT_PATH = ProjectPath.discover_root;


# p ARGV.options;
CONFIG = RubyProjectBuild::Config.loadYAML "#{ROOT_PATH}/config/server.yaml"

RubyProjectBuild::Sftp.start CONFIG['account'] do | sftp |
  p sftp.remove!('/var/www/html/demo/mortgage-mobx')
end

# p RubyProjectBuild.new
## prepare:
# gem install net-sftp
## load config:

# ROOT_PATH = File.dirname(__FILE__);
# config = YAML.load(File.open("#{ROOT_PATH}/config/server.yaml"))
