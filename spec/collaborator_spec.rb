
require 'group'
require 'rspec'
require 'rack/test' # rack is a specification close to the TCP/IP protocol. rack test is a set of testing helpers allowing test of web applications

describe Collaborator do #describing the Collaborator class
  include Mongoid::Document
  include Rack::Test::Methods  # importing methods to test as if was a web applciation. see the sinatra documentation for info on rack tests.

  def app
  	Collaborator #this is Sinatra::Application. this is taking the Collaborator class, and making an instance available in the whole rspec env.
  end
#this makes the app Collaborator available to the test so can send things to it
  
  it 'returns all the groups in the database' do
  	Group.should receive (:all)
		get '/list-of-groups'

  end

end


