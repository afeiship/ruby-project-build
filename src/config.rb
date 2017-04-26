#!/usr/bin/env ruby
require 'net/sftp'
require 'yaml'
require 'project_path'
require 'pathname'

require File.join(File.dirname(__FILE__),'version')

class RubyProjectBuild::Config
  def self.loadYAML inPath
    YAML.load(File.read(inPath))
  end
end
