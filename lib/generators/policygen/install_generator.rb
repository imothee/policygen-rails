# frozen_string_literal: true

module Policygen
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy Policygen default files"
      source_root File.expand_path("templates", __dir__)

      def copy_config
        template "config/initializers/policygen.rb"
      end
    end
  end
end