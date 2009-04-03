# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_contabil_session',
  :secret      => '114fcf5c5f4c27717e1b9a106986e7ee667ff005a6b385ad17010e328c75d85d036c3747bf9c26c997e70b9bb18d3da71d49414b3c9554c46578a14974818739'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
