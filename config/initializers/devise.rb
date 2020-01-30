Devise.setup do |config|

  config.mailer_sender = 'childbrain@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

   config.scoped_views = true

  config.sign_out_via = :delete

  client_id = Rails.application.secrets[:google_client_id]
  client_secret = Rails.application.secrets[:google_client_secret]

  # Configure Google omniauth with proper scope
  config.omniauth :facebook, '591625221386049', 'a53965dccef7437d565d1227cfa6b293'
  config.omniauth :twitter, '1222335156821929984-oAjVbxrjgwVTVw8dq9TcRxwgyAzxwB', 'kw9llTzaj7wCShyjFUtbb63lxOJEBMmnmZyvj9qHd6qCX'
  config.omniauth :github, '6beb27cda0ebc426d790', '0fb1cbebdf212ad40b29d1371cebc22c863bed8d'
  # config.omniauth :google_oauth2, client_id, client_secret, {
  #   scope: "contacts.readonly,userinfo.email"
  # }

end
