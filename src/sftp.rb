#!/usr/bin/env ruby
require 'net/sftp'
require 'yaml'
require 'project_path'
require 'pathname'

class RubyProjectBuild::Sftp
  def self.start inConfig
    Net::SFTP.start(inConfig['host'], inConfig['username'], password: inConfig['password'],) do |sftp|
        yield sftp
    end
  end
end
