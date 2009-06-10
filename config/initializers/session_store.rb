# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oflame_session',
  :secret      => '5a0ddc94aa62c4259d5b0582e7a3ac998d1844396b137fd8c943117c9e949388be2e832cabed2ba30d83eee99303779c9f7cca078ac1f29fc496d6d41e3f595f',
  :domain      => '.localhost'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
