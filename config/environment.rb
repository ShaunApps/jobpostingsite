# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


require 'casclient'
require 'casclient/frameworks/rails/filter'


CASClient::Frameworks::Rails::Filter.configure(
   :cas_base_url => "http://login.wyncode.co",
   :extra_attributes_session_key => :cas_extra_attributes,
  #  :service_url => "http://localhost:3000/"
   :service_url => "https://boiling-depths-97825.herokuapp.com/"
)
