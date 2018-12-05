require 'sinatra'
require 'active_record'
require_relative 'lib/applicant'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'mysql',
  username: 'root',
  password: 'password',
  database: 'footprints'
)

get '/applicants' do
  Applicant.all.to_json
end

post '/applicant' do
  status 201
end
