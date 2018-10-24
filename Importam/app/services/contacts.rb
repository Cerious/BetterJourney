class Contacts
  require 'rubygems'
  require 'httparty'
  #base_uri 'https://people.googleapis.com'

  def initialize(page, token)
    @page = page
    @token = token
  end

  def options
    return @options
  end

  def contactsList
    HTTParty.get("https://people.googleapis.com/v1/people/me/connections",
      query: { personFields: "names,emailAddresses" },
      headers: {
        "Authorization" => "Bearer #{@token}",
        "Accept" => "application/json"
      }
    )
  end
end
#person = Contacts.new("names,emailAddresses", 1, 'access_token')
#op = person.options
