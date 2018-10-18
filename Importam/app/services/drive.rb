require 'google/apis/drive_v2'
require 'google/api_client/client_secrets'

class Drive
  def get_drive_files
    client_secrets = Google::APIClient::ClientSecrets.load
    auth_client = client_secrets.to_authorization
    auth_client.update!(
      :scope => 'https://www.googleapis.com/auth/drive.metadata.readonly',
      :redirect_uri => 'http://localhost:3000/google/oauth2callback',
      :additional_parameters => {
        "access_type" => "offline",         # offline access
        "include_granted_scopes" => "true"  # incremental auth
      }
    )
  end
end
