class GoogleController < ApplicationController

  def import
  end

  def help
  end

  def oauth2callback
    #This part uses a post request to exchange client_id&client_secret for an access token from oauth2
    response = HTTParty.post('https://accounts.google.com/o/oauth2/token',  body: { client_id: ENV["GOOGLEID"], client_secret: ENV["GOOGLESECRET"], code: params['code'], grant_type: 'authorization_code', redirect_uri: 'http://localhost:3000/google/oauth2callback', scope: params['scope'] }, headers: { 'Accept' => 'application/json' } )
    Rails.logger.info response
    access_token = response["access_token"]
    #here we pass the access_token to a new Contacts object in order to get the contacts list response
=begin
    response = HTTParty.get("https://people.googleapis.com/v1/people/me/connections",
                  query: { personFields: "names,emailAddresses", pageSize: 1},
                  headers: {
                    "Authorization" => "Bearer #{access_token}",
                    "Accept" => "application/json"
                  }
                )
=end
    person = Contacts.new(2, access_token)
    response = person.contactsList
    Rails.logger.info response
  end

  def authenticate
    redirect_to "https://accounts.google.com/o/oauth2/auth?client_id=#{ENV["GOOGLEID"]}&response_type=code&redirect_uri=http://localhost:3000/google/oauth2callback&scope=https://www.googleapis.com/auth/contacts"

  end
end
