# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_convergese_session',
  :secret => 'b2abe34ddf5589f0b2810ff6102355ddcc1229bab3e12924d499429ec40405c53e1b297e9596f3434a81a011d843c4dc42c2c68f2a01170e9ea7e91d0a33dd85'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
