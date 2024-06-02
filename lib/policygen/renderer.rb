# frozen_string_literal: true

require "i18n"
require "erb"
require_relative "css/tailwind"

module Policygen
  class Renderer
    def initialize
      @config = Policygen.config
      @css = css

      unless I18n.load_path.include?(File.join(File.dirname(__FILE__), "../locales", "en.yml"))
        I18n.load_path += Dir[File.join(File.dirname(__FILE__), "../locales", "*.yml")]
      end
    end

    def privacy_policy
      template = File.read(File.join(File.dirname(__FILE__), "../templates", "privacy_policy.html.erb"))
      ERB.new(template).result(binding)
    end

    def terms_of_service
      template = File.read(File.join(File.dirname(__FILE__), "../templates", "tos.html.erb"))
      ERB.new(template).result(binding)
    end

    private

    def css
      return Policygen::Css::Tailwind.new if @config.css_framework == :tailwind

      Policygen::Css::Classes.new
    end
  end
end
