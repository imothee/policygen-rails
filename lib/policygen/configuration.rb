# frozen_string_literal: true

module Policygen
  # Policygen configuration.
  class Configuration
    require "date"

    # Which css framework to use
    attr_accessor :css_framework

    # Tailwind CSS configuration
    attr_accessor :tailwind_config

    # Your entity name
    attr_accessor :entity_name

    # Your entity website
    attr_accessor :entity_website

    # Your entity address
    attr_accessor :entity_address

    # Your support email
    attr_accessor :support_email

    # Your privacy policy email
    attr_accessor :privacy_email

    # Privacy policy last updated
    attr_accessor :privacy_last_updated

    # Terms of service last updated
    attr_accessor :tos_last_updated

    # Platforms the policies applies to
    attr_accessor :platforms

    # User locations the policy applies to
    attr_accessor :locations

    # Entity location
    attr_accessor :entity_location

    # Allow users under 18
    attr_accessor :under_eighteen

    # Allow users under 13
    attr_accessor :under_thirteen

    # Do you use social sign-in?
    attr_accessor :social_sign_in

    # Sell purchasable goods
    attr_accessor :purchasable_goods

    # Subscription
    attr_accessor :subscription

    # Free trial
    attr_accessor :free_trial

    # Auto renew subscription
    attr_accessor :auto_renew

    # Refund policy
    attr_accessor :refund_policy

    # Allow users to upload content
    attr_accessor :user_content

    # Assign a license to user uploaded content
    attr_accessor :user_content_license

    # Allow users to create accounts
    attr_accessor :user_accounts

    # Governing law for the terms of service
    attr_accessor :governing_law

    # Dispute resolution clause
    attr_accessor :dispute_resolution

    # Mediation clause
    attr_accessor :mediation

    # Prohibited uses clause
    attr_accessor :prohibited_uses

    # Service SLA
    attr_accessor :service_sla

    # Service SLA amount
    attr_accessor :service_sla_amount

    # Service SLA timeframe
    attr_accessor :service_sla_timeframe

    # Service SLA refund
    attr_accessor :service_sla_refund

    # Service SLA refund type
    attr_accessor :service_sla_refund_type

    # Service SLA custom clause
    attr_accessor :service_sla_custom

    # Limitation of liability clause
    attr_accessor :liability_limitation

    # Liability limitation type
    attr_accessor :liability_limitation_type

    # Liability timeframe
    attr_accessor :liability_limitation_timeframe

    # Liability amount
    attr_accessor :liability_limitation_amount

    # Collected personal information
    attr_accessor :personal_information

    # Collected sensitive information
    attr_accessor :sensitive_information

    # Collected third party data
    attr_accessor :third_party_data

    # Collected payment data
    attr_accessor :payment_data

    # Payment processors used
    attr_accessor :payment_processors

    # Do you store logs or app usage data?
    attr_accessor :app_usage_data

    # Do you disclose personal information to third parties?
    attr_accessor :third_party_disclosure

    # Third party entities you disclose personal information to
    attr_accessor :third_party_disclosure_entities

    # Do you sell/share personal information with third parties?
    attr_accessor :third_party_sharing

    # Third party entities you sell/share personal information with
    attr_accessor :third_party_sharing_entities

    # Do you have robust security measures in place?
    attr_accessor :security_measures

    # Do you use tracking cookies/web beacons?
    attr_accessor :web_tracking

    # Do you use third party analytics?
    attr_accessor :third_party_analytics

    # What do you need to perform to deliver your service?
    attr_accessor :service_requirements

    # What legal basis do you have for processing data?
    attr_accessor :legal_basis

    # Data retention period
    attr_accessor :data_retention_period

    # Do you support all US state privacy laws?
    attr_accessor :us_state_privacy_laws

    # Do you have a privacy management page to link to?
    attr_accessor :privacy_page

    # Do you have a Data Protection Officer (DPO)?
    attr_accessor :dpo

    # Your DPO's name
    attr_accessor :dpo_name

    # Your DPO's email
    attr_accessor :dpo_email

    # Your DPO's phone number
    attr_accessor :dpo_phone

    # Initializes a new instance of Configuration class.
    def initialize
      reset_defaults!
    end

    def default_tailwind_config
      {
        heading_color: "text-gray-900",
        body_color: "text-gray-800",
        link_color: "text-blue-500"
      }
    end

    def get_tailwind_config(key)
      @tailwind_config[key] || default_tailwind_config[key]
    end

    def reset_defaults!
      @css_framework = :tailwind
      @tailwind_config = {}

      @entity_name = ""
      @entity_website = ""
      @entity_address = ""
      @support_email = ""
      @privacy_email = ""

      @privacy_last_updated = Date.today.strftime("%Y-%m-%d")
      @tos_last_updated = Date.today.strftime("%Y-%m-%d")

      @platforms = [:web]
      @locations = %i[us eu uk]
      @entity_location = :us
      @under_eighteen = false
      @under_thirteen = false
      @social_sign_in = false

      @purchasable_goods = false
      @subscription = false
      @free_trial = false
      @auto_renew = false
      @refund_policy = :none
      @user_content = false
      @user_content_license = false
      @user_accounts = false
      @governing_law = :california
      @dispute_resolution = :litigation
      @mediation = false
      @prohibited_uses = []

      @service_sla = false
      @service_sla_amount = 0
      @service_sla_timeframe = nil
      @service_sla_refund = false
      @service_sla_refund_type = :full
      @service_sla_custom = nil

      @liability_limitation = false
      @liability_limitation_type = :amount_paid
      @liability_limitation_timeframe = nil
      @liability_limitation_amount = 0

      @personal_information = []
      @sensitive_information = []
      @third_party_data = []
      @payment_data = false
      @payment_processors = []
      @app_usage_data = false
      @third_party_disclosure = false
      @third_party_disclosure_entities = []
      @third_party_sharing = false
      @third_party_sharing_entities = []
      @security_measures = false
      @web_tracking = false
      @third_party_analytics = false
      @service_requirements = []
      @legal_basis = []
      @data_retention_period = nil
      @us_state_privacy_laws = false
      @privacy_page = nil
      @dpo = false
      @dpo_name = nil
      @dpo_email = nil
      @dpo_phone = nil
    end
  end
end
