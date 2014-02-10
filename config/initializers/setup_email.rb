ActionMailer::Base.smtp_settings = {
   :address => "email-smtp.us-west-2.amazonaws.com",
    :user_name => ENV["SES_USERNAME"],
    :password => ENV["SES_PASSWORD"],
    :authentication => :login,
    :enable_starttls_auto => true
}
