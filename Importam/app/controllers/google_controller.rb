class GoogleController < ApplicationController

  def import
  end

  def help
  end

  def oauth2callback
    response = HTTParty.post('https://accounts.google.com/o/oauth2/token',  body: { client_id: ENV["GOOGLEID"], client_secret: ENV["GOOGLESECRET"], code: params['code'], grant_type: 'authorization_code', redirect_uri: 'http://localhost:3000/google/oauth2callback', scope: params['scope'] }, headers: { 'Accept' => 'application/json' } )
    access_token = response["access_token"]
    @response = Contacts.new(3, access_token).contactsList
    return @response
  end

  def authenticate
    redirect_to "https://accounts.google.com/o/oauth2/auth?client_id=#{ENV["GOOGLEID"]}&response_type=code&redirect_uri=http://localhost:3000/google/oauth2callback&scope=https://www.googleapis.com/auth/contacts"
  end
end
