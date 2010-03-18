# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_raverant_session',
  :secret      => '14e6244d8248ac22df2e0eb2ee6709b02d154a3c95fd3f01efcc18f77704cf50ec5bbd41daece8fb3062815a2c2dac58eddbd0d9069b0e2bd99f1cbf6ddd9583'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
