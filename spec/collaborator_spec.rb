require 'collaborator'
require 'rspec'
require 'rack/test'


describe Group do

	include Rack::Test::Methods

	def app
		Collaborator # creates a new instance of Collaborator and makes it available to the tests
	end

	it 'has a group called Pandas'
		
		get '/list-of-groups'
		#ßhiking = Group.new
		Pandas = Group.where(name: "Pandas")
	end
	
	#context 'creating a new post' do
	#	it 'saves a new post' do
	#		Group.should_receive(:create).with(message: 'Hey test')
	#		post '/mock-groupname', { :message => 'Hey test' }
	#	end
	#end

end