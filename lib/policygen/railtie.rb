require 'policygen/view_helpers'
module Policygen
  class Railtie < Rails::Railtie
    initializer "policygen.view_helpers" do
      ActiveSupport.on_load(:action_view) { include Policygen::ViewHelpers }
    end
  end
end