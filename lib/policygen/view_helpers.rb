# frozen_string_literal: true

module Policygen
  module ViewHelpers
    def privacy_policy
      Renderer.new.privacy_policy.html_safe
    end

    def terms_of_service
      Renderer.new.terms_of_service.html_safe
    end

    def cookie_policy
      
    end
  end
end
