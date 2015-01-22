# encoding: ascii-8bit
$: << File.expand_path(File.join(File.dirname(__FILE__), '/../lib'))

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
end

require 'bundler'
Bundler.setup
require 'bitcoin'
require 'bitcoin/blockchain'
require 'bitcoin/wallet'

begin
  require 'minitest'
rescue LoadError
end
require 'minitest/mock'
include MiniTest

