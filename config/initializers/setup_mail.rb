  

ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.com",
  :port     => 587,
  :domain   => "gmail.com",
  :user_name  => ENV["GMAIL_USERNAME"],
  :password => ENV["GMAIL_PASSWORD"],
  :authentication => "plain",
  :enable_starttls_auto => true
}


ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_url_options[:host] = ENV["DOMAIN"]

ActionMailer::Base.default :charset => "utf-8"
