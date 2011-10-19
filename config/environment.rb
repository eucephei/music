# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # config.gem "paperclip"
  config.gem 'will_paginate', :version => '~> 2.3.11', :source => 'http://gemcutter.org'

  config.time_zone = 'UTC'
  
  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_depot_session',
    :secret      => 'f914e9b1bbdb829688de8512f5fea7d8e83fb35bfe2b56bcf1e6438d1d1b7837c532f8c2ece2a2d0e37812e9b210824089b1810a4e238a61dfd922dc9dd62521'
  }

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with "rake db:sessions:create")
  config.action_controller.session_store = :active_record_store
  
end