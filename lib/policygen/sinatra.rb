require 'sinatra/base'
require 'policygen/view_helpers'

module Policygen
  module Sinatra
    def self.registered(app)
      app.helpers Policygen::ViewHelpers
    end
  end
end

Sinatra.register Policygen::Sinatra