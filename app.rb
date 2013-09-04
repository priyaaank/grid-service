require 'sinatra'
require 'json'
#Dir["models/**/*.rb"].sort.each {|file| require_relative file}

set :public_folder, 'public'

get '/' do
  content_type 'application/json'
  File.read(File.join('public', 'packet.json'))
end
