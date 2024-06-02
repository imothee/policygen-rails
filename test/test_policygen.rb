# frozen_string_literal: true

require "test_helper"

class TestPolicygen < Minitest::Test
  
  def test_that_it_has_a_version_number
    refute_nil ::Policygen::VERSION
  end

  def test_do_not_bloat_i18n_load_path
    Policygen::Renderer.new.privacy_policy
    base = I18n.load_path
    Policygen::Renderer.new.privacy_policy
    assert_equal base, I18n.load_path
  end

  def test_it_renders_the_privacy_policy
    # Arrange
    Policygen.configure do |config|
      config.entity_name = 'Test Entity'
      config.entity_website = 'https://testentity.com'
      config.dpo = true
      config.dpo_name = 'Test DPO'
      config.dpo_email = ''
      config.privacy_email = 'privacy@testentity.com'
      config.personal_information = [:name, :email, :phone, :address, :password, :ip_address, :device_id, :credit_card, :location_data, :anonymized_usage_data, :app_usage_data]
      config.tailwind_config = {
        heading_color: 'text-foreground',
        body_color: 'text-foreground-darken'
      }
    end

    # Act
    result = Policygen::Renderer.new.privacy_policy
  end
end
