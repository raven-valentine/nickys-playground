require 'sinatra/base'

class Group < Sinatra::Base
  include Mongoid::Document
  set :views, File.join(File.dirname(__FILE__), '../views')

  field :group_name, type: String

  get '/' do
    'Hello Collaborator!'
  end

  get '/mock-groupname' do
    erb :post_form
  end

  get '/list-of-groups' do
    erb :list_of_groups
  end
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end