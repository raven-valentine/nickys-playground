require 'sinatra/base'
#this inside the sinatra gem
require 'mongoid'
#this refers to the mongoid gem

#we can't use git to save out lives!!!

  #ENV["RACK_ENV"] = "production"

class Collaborator < Sinatra::Base
  set :views, File.join(File.dirname(__FILE__), '../views')

  Mongoid.load!(File.join(File.dirname(__FILE__),"mongoid.yml"))

  get '/' do
    'Hello Collaborator!'
  end

  get '/mock-groupname' do
    erb :post_form
  end

  post '/mock-groupname' do
    erb :post_id1
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

