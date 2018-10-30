class GoogleController < ApplicationController

  def import
    #@@num = Number.new(params[:product][:price])
    #@num1 = @@num.retrn
  end

  def help
    #@num2 = @@num.retrn
  end

  def oauth2callback
    response = HTTParty.post('https://accounts.google.com/o/oauth2/token',  body: { client_id: ENV["GOOGLEID"], client_secret: ENV["GOOGLESECRET"], code: params['code'], grant_type: 'authorization_code', redirect_uri: 'http://localhost:3000/google/oauth2callback', scope: params['scope'] }, headers: { 'Accept' => 'application/json' } )
    access_token = response["access_token"]
    @num2 = @@num
    @response = Contacts.new(@num2, access_token).contactsList
    return @response
  end

  def authenticate
    @@num = params[:product][:price]
    redirect_to "https://accounts.google.com/o/oauth2/auth?client_id=#{ENV["GOOGLEID"]}&response_type=code&redirect_uri=http://localhost:3000/google/oauth2callback&scope=https://www.googleapis.com/auth/contacts"
  end
end
