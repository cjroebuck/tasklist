# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todolist_session',
  :secret      => 'c3726d45171c4f0051db991d25607925c8a802dfa85b11613bee22829118cf4d220f90e6f2a5845fb3f28cb55c573058c0ba3beb3497e9bd22b8bfee8eac8546'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
