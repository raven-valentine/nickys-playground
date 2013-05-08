require 'collaborator'
require 'rspec'
require 'rack/test'

set :environment, :test

describe 'Collaborator' do
	include Rack::Test::Methods
end
