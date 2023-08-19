require 'sinatra'
require 'sinatra/activerecord'
require 'mysql2'

set :bind, '0.0.0.0'

set :database, {
  adapter: 'mysql2',
  host: 'db',
  username: 'user',
  password: 'userpassword',
  database: 'sinatra_app'
}

class Timestamp < ActiveRecord::Base
end

get '/timestamp' do
  timestamp = Timestamp.create!(received_at: Time.now)
  "Timestamp stored: #{timestamp.received_at}"
end
