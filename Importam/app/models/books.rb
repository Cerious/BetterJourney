class Books

  def initialize()
  end

  def get_books
    response = RestClient::Request.execute(
      method: :get,
      url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json',
      headers: {api_key: '06be14f611ba4faf8063012e5a66c6f4'}
    )
