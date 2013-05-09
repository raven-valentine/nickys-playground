
require 'group'
require 'rspec'
require 'rack/test' # rack is a specification close to the TCP/IP protocol. rack test is a set of testing helpers allowing test of web applications

describe Group do #describing the Collaborator class
  include Rack::Test::Methods  # importing methods to test as if was a web applciation. see the sinatra documentation for info on rack tests.

  def app
  	Collaborator #this is Sinatra::Application. this is taking the Collaborator class, and making an instance available in the whole rspec env.
  end

  it 'has a group called hiking'
      get '/list-of-groups'
      hiking = Group.where(name: "hiking").first
  end

end


