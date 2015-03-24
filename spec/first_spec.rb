require 'rspec'
require 'rack/test'
require 'spec_helper'
require 'sinatra'

puts "Specs are running."

describe 'The main page' do
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end

  it "Identifies itself as the AVS signin page" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Alpine Valley School Time and Attendance')
  end
end
