class Contacts
  include HTTParty
  base_uri 'https://people.googleapis.com'

  def initialize(personFields, page, token)
    @options = { query: { personFields: personFields,  } }
    @page = page
    @token = token
  end

  def list(token)
    HTTParty.get("/v1/people/me/connections",
      query: { personFields: "names,emailAddresses" },
      headers: {
        "Authorization" => "Bearer #{token}",
        "Accept" => "application/json"
      }
    )
  end
end
