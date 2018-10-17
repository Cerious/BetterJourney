=begin
require 'google/apis/people_v1'
require 'client_secrets'

client_secrets = Google::APIClient::ClientSecrets.load
auth_client = client_secrets.to_authorization
auth_client.update!(
  :scope => 'https://www.googleapis.com/auth/contacts.readonly',
  :redirect_uri => 'http://localhost:3000',
  :additional_parameters => {
    "access_type" => "offline",         # offline access
    "include_granted_scopes" => "true"  # incremental auth
  }
)
=end
