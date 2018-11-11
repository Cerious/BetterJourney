require 'httparty'
require 'json'
class SubberTool
    BASE_URL = 'https://madmimi.com:443'
    CREDS = 'https://api.madmimi.com/promotions?username=justin@mybetterjourney.com&api_key=nr;Uq6qKY8AhjTm'
    
    def add_sub
        HTTParty.get(CREDS)
        person = {
            "email": "carl2cool@gmail.com",
            "firstName": "carl",
            "lastName": "bravo"
    }.to_json
        HTTParty.post("#{BASE_URL}/api/v3/subscribers", 
        body: person, 
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
        })

    end

    def get_mock_list(listId=6151744)
        HTTParty.get("#{BASE_URL}/api/v3/subscriberLists/#{listId}/subscribers",
        headers: {
            "Accept": "application/json"
        } )
        
    end 

end

carl = SubberTool.new
puts carl.add_sub