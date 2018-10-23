class Contacts
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page, token)
    @options = { query: { site: service, page: page } }
    @token = token
  end

  def init()
  end

  def list()
  end
end
