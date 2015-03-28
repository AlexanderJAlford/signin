require 'spec_helper'

puts "Specs are running."

describe 'The main page' do

  before(:all) do
    get '/'
  end

  it "Loads okay" do
    expect(last_response).to be_ok
  end

  it "Identifies itself as the AVS signin page" do
    expect(last_response.body).to match('Alpine Valley School Time and Attendance')
  end

  it "has a button" do
    expect(last_response.body).to match('<input name="sign_in_xander" type="submit"')
  end
end
