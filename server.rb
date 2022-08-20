require 'sinatra'
require 'json'
require 'csv'
require './schedule.rb'

users = {
  'thibault': { first_name: 'Thibault', last_name: 'Denizet', age: 25 },
  'simon':    { first_name: 'Simon', last_name: 'Random', age: 26 },
  'john':     { first_name: 'John', last_name: 'Smith', age: 28 }
}


get '/' do
  send_file 'home.html'
end

get '/users' do
  content_type 'application/json'
  users.map { |name, data| data.merge(id: name) }.to_json
end

post '/schedule' do

  # logger.info "Saving #{payload} with #{payload[:meta]}"
  # logger.info request.body
  
  # result = Schedule.print_csv(request.body)

  # logger.info result

  # result

  logger.info request.body

  csv = CSV.new(request.body, :headers => true)
  hash = csv.to_a.map { |row| row.to_hash }

  hash.to_json
end