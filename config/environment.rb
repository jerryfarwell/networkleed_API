# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    address: "smtp.sendgrid.net",
    port: 587,
    domain: 'https://seal-app-ntroa.ondigitalocean.app/',
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: "apikey",
    password: Rails.application.credentials.dig(:sendgrid, :api_key)
  }
  
  