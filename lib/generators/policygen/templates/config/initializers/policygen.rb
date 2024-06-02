# frozen_string_literal: true

# Use this setup block to configure all options available in Policygen.
Policygen.configure do |config|
  # ==> CSS and Styling
  # Which css framework to use? Default :tailwind
  # [:tailwind, :custom]
  # config.css_framework = :tailwind

  # Tailwind CSS configuration
  # config.tailwind_config = { heading_color: 'text-gray-800', body_color: 'text-gray-700' }

  # ==> Entity Information
  # What is the entity name we should use in the policies?
  # config.entity_name = 'Your Entity Name'

  # What is the entity website we should use in the policies?
  # config.entity_website = 'https://www.your-entity-website.com'

  # Do you have a contact address for privacy questions?
  # config.entity_address = '1234 Main Street, Anytown, USA'

  # Who should users reach out to for policy questions?
  # config.support_email = 'support@policygen.xyz'
  # config.privacy_email = 'privacy@policygen.xyz'

  # ==> Policy updates
  # When was your privacy policy last updated?
  # config.privacy_last_updated = 'May 31, 2024'

  # When was your terms of service last updated?
  # config.tos_last_updated = 'May 31, 2024'

  # ==> Policy wide settings
  # What platforms does your policy apply to? Default [:web]
  # config.platforms = [:web, :mobile]

  # What locations does the privacy policy apply to? Default [:us, :ue, :uk]
  # config.locations = [:us, :eu, :uk]

  # What is the location of the entity? Default :us
  # config.entity_location = :us

  # Do you allow users under 18? Default false
  # config.under_eighteen = true

  # Do you allow users under 13? Default false
  # config.under_thirteen = true

  # Do you use social sign-in? Default false
  # config.social_sign_in = true

  # ==> TOS specific settings
  # Do you sell purchasable goods? Default false
  # config.purchasable_goods = true

  # Do you have a subscription? Default false
  # config.subscription = true

  # Does your subscription have a free trial? Default false
  # config.free_trial = true

  # Does your subscription renew automatically? Default false
  # config.auto_renew = true

  # What is the refund policy? Default :none
  # config.refund_policy = :none, :full, :pro_rata

  # Do you allow users to upload content? Default false
  # config.user_content = true

  # Do you assign a license of user uploaded content? Default false
  # config.user_content_license = true

  # Do you allow users to create accounts? Default false
  # config.user_accounts = true

  # Governing law clause, default :california
  # config.governing_law = :california, :delaware, :new_york

  # Dispute resolution clause, default :litigation
  # config.dispute_resolution = :arbitration, :litigation

  # Mediation clause, default false
  # Do you want to do informal mediation before arbitration or litigation?
  # config.mediation = true

  # Prohibited uses clause, default []
  # Add any custom prohibited uses as a symbol to this array
  # config.prohibited_uses = [:crawling, :illegal, :harmful, :infringing, :abusive, :spam, :advertising, :impersonation, :account_transfer]

  # Service SLA, default false
  # config.service_sla = true

  # Service SLA Amount, default 0
  # config.service_sla_amount = 100

  # Service SLA timeframe, default nil
  # config.service_sla_timeframe = '1 month'

  # Service SLA refund, default false
  # config.service_sla_refund = true

  # Service SLA refund type, default :full
  # config.service_sla_refund_type = :full, :pro_rata

  # Service SLA custom clause, default nil
  # If this exists we will use this instead of the amount and timeframe above
  # config.service_sla_custom = 'We guarantee 99.9% uptime'

  # Liability limitation, default false
  # config.liability_limitation = true

  # Liability limitation type, default :amount_paid
  # config.liability_limitation_type = :amount_paid, :amount, :min_amount_paid_or_amount

  # Liability timeframe, set if you have a subscription model, default nil
  # config.liability_limitation_timeframe = '6 months'

  # Liability limitation amount, default 0
  # config.liability_limitation_amount = 1000

  # ==> Privacy specific settings
  # What personal information do you collect? Default []
  # Personal information is any data that can be used to identify an individual.
  # Add any custom data you collect as a symbol to this array
  # config.personal_information = [:name, :email, :phone, :address, :password, :ip_address, :device_id, :credit_card, :location_data, :anonymized_usage_data]

  # What sensitive information do you collect? Default []
  # Sensitive information is any data that a user would have a reasonable expectation to remain private.
  # Add any custom data you collect as a symbol to this array
  # config.sensitive_information = [:ssn, :financial_data, :health_data, :biometric_data, :genetic_data, :political_affiliation, :sexual_orientation, :criminal_history, :religion]

  # What third-party data do you collect? Default []
  # Third-party data is any data that you collect from third-party services.
  # Add any custom data you collect as a symbol to this array
  # config.third_party_data = [:advertising_data, :analytics_data, :social_media_data, :purchase_data, :email_data, :support_data, :crm_data, :job_data, :address_data, :behavior_data]

  # Do you collect payment data? Default false
  # config.payment_data = true

  # What payment processors do you use? Default []
  # Please add the website of any payment processors you use.
  # config.payment_processors = ['https://stripe.com', 'https://paypal.com']

  # Do you store logs or app usage data? Default false
  # config.app_usage_data = true

  # Do you disclose personal information to third parties? Default false
  # If you use third-party services that collect data, set this to true.
  # config.third_party_disclosure = true

  # Third party entities you disclose personal information to. Default []
  # config.third_party_disclosure_entities = ['Google Analytics', 'Facebook Pixel']

  # Do you sell/share personal information with third parties? Default false
  # If you sell or share any data with business partners, set this to true.
  # config.third_party_sharing = true

  # Third party entities you share personal information with. Default []
  # config.third_party_sharing_entities = ['Google Ads', 'Facebook Ads']

  # Do you have robust security measures in place? Default false
  # If you have security measures in place to protect user data, set this to true.
  # config.security_measures = true

  # Do you use tracking cookies/web beacons? Default false
  # config.web_tracking = true

  # Do you use third party analytics? Default false
  # config.third_party_analytics = true

  # What do you need to perform to deliver your service? Default []
  # Accounts = Creating and managing user accounts
  # Communications = Sending transactional or marketing communications to or between users
  # Orders = Processing orders and payments
  # config.service_requirements = [:accounts, :communications, :orders]

  # Under what legal basis do you collect and process data? Default []
  # config.legal_basis = [:advertising, :marketing, :analytics, :security, :fraud_prevention]

  # Data retention period
  # How long do you store user data after account termination? Default nil
  # config.data_retention_period = ' 3 months'

  # Do you support all US state privacy laws? Default false
  # config.us_state_privacy_laws = true

  # Do you have a privacy management page to link to? Default nil
  # If you don't have a privacy page, users will be told to email you at your privacy_email with deletion and data requests
  # config.privacy_page = 'https://www.your-entity-website.com/privacy'

  # Do you have a Data Protection Officer (DPO)? Default false
  # config.dpo = true

  # What is the DPO's name?
  # config.dpo_name = 'DPO Name'

  # What is the DPO's email?
  # config.dpo_email = ''

  # What is the DPO's phone number?
  # config.dpo_phone = ''
end
