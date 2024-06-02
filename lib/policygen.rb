# frozen_string_literal: true

require_relative "policygen/version"

# Policygen gem namespace
module Policygen
  class Error < StandardError; end
  
  # Returns Policygen gem configuration
  def self.config
    @config ||= Configuration.new
  end

  # Configures Policygen gem
  # @yield [Configuration] configuration object
  # @example
  #
  #   Policygen.configure do |config|
  #     config.policy_path = "app/policies"
  #   end
  def self.configure
    yield config
  end
end

require 'policygen/configuration'
require 'policygen/renderer'
require 'policygen/view_helpers'
require 'policygen/railtie' if defined?(Rails)
require 'policygen/sinatra' if defined?(Sinatra)