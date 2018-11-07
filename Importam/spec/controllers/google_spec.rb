require 'rails_helper'

RSpec.describe GoogleController, :type => :controller do
    it "renders the help template" do
        get :help
        expect(response).to render_template("help")
    end

    it "makes non empty token" do
        response = HTTParty.post('https://accounts.google.com/o/oauth2/token',  body: { client_id: ENV["GOOGLEID"], client_secret: ENV["GOOGLESECRET"], code: params['code'], grant_type: 'authorization_code', redirect_uri: 'http://localhost:3000/google/oauth2callback', scope: params['scope'] }, headers: { 'Accept' => 'application/json' } )
        access_token = response["access_token"]
        expect(access_token).not_to eql(nil)
    end

end