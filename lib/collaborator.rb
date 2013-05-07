require 'sinatra/base'

class Collaborator < Sinatra::Base
  set :views, File.join(File.dirname(__FILE__), '../views')

  get '/' do
    'Hello Collaborator!'
  end

  get '/mock-groupname' do
    erb :post_form
  end
  
  get '/group-timeline' do
    erb :group_timeline
  end 
 
  # start the server if ruby file executed directly
  run! if app_file == $0
end
