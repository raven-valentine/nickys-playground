require 'rspec'
require 'rack/test'
require 'collaborator'                                                 

describe Collaborator do                                               
  
  include Rack::Test::Methods                                            
  
  def app
   Collaborator
  end

  it 'our group timeline shows us something' do
    get '/group-timeline'
    last_response.body.should eq "<p>Hello World</p>\n"
  end
     
  context 'displaying a list of posts' do
    it 'a group timeline displays a post' do
      Post.should_receive(:all)
      get '/group-timeline'
    end
  end
end  
                        
