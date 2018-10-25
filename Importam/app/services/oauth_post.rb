class Oauth_post < ApplicationController
  require 'rubygems'
  require 'httparty'

  def initialize(url)
    @url = url
  end

  def getToken
    res = HTTParty.post(@url,  body: { client_id: ENV["GOOGLEID"], client_secret: ENV["GOOGLESECRET"], code: params['code'], grant_type: 'authorization_code', redirect_uri: 'http://localhost:3000/google/oauth2callback', scope: params['scope'] }, headers: { 'Accept' => 'application/json' } )
    access_token = res["access_token"]
    return access_token
  end
end
