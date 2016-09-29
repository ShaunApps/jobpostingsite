# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


require 'casclient'
require 'casclient/frameworks/rails/filter'


CASClient::Frameworks::Rails::Filter.configure(
   :cas_base_url => "http://login.wyncode.co",
   :service_url => "http://localhost:3000"
)
