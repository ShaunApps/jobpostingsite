# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


require 'casclient'
require 'casclient/frameworks/rails/filter'


CASClient::Frameworks::Rails::Filter.configure(
   :cas_base_url => "http://login.wyncode.co",
   :enable_single_sign_out => true,
   :service_url => "http://localhost:3000"
)
