# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jdr_session',
  :secret      => '2991b2b573dad12b85656d1c43a049875e213b3ae2ab1ac5b2a41f8bb7e78fa565a688107d43d3e8a72d0899eb3dd88f43d5879db728a8223329b948b823ed79'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
