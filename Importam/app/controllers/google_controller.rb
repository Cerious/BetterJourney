class GoogleController < ApplicationController
  def import
  end

  def authenticated
  end

  def help
  end

  def authenticate
    client_secrets = Google::APIClient::ClientSecrets.load

    # Request authorization
    redirect user_credentials.authorization_uri.to_s, 303

  end
end
