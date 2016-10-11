require 'sinatra'
require 'json'
Dir[File.expand_path("../api/", __FILE__) << '/*.rb'].each do | file |
  require file
end

post '/api/v1/auth/signup' do
  data = {
            "uiid": "03df7bcc66d30d286359ef43947a0000",
            "device_token": "03df7bcc66d30d286359ef43947a8136",
            "message": "created user."
          }
  return data
end

get '/api/v1/users' do
    # users = Users.new
    # users.getUsers.to_json
    Users.getUsers.to_json
end

get '/api/v1/searchers' do
    Searcher.getSearchers.to_json
end

get '/api/v1/entries' do
    Entry.getEntries.to_json
end

get '/api/v1/entries/:entry_id' do
    Entry.new().getHash().to_json
end

get '/api/v1/entries/:entry_id/comments' do
    Comment.getComments.to_json
end

get '/api/v1/entries/:entry_id/requests' do
    Request.getResults.to_json
end

get '/api/v1/wanderers' do
    Wanderer.getWanderers.to_json
end
