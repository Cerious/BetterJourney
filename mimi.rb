##In this we will be using the mad mimi sub api to first create a person and then
##add said person to the subscriber list.
##use httparty and find out the structure for sending a request with it

class SubberTool
    ##Along with any request, you'll need to pass two parameters. The first is your 
    ##Username (the email you use to sign in), which identifies the account you're 
    ##currently using, and the second is a valid API key.
BASE_URL = 'https://madmimi.com:443/api/v3/subscriberLists?name=jason'
CREDS = 'curl -v -H "Accept: application/json" -X GET --data "api_key=nr;Uq6qKY8AhjTm&username=justin@mybetterjourney.com https://api.madmimi.com/promotions'
def add_sub
    name = 'carl'
    list_info = {

    }
    person = {
        "email": "carl2cool@gmail.com",
      "name": "carl bravo",
      "firstName": "carl",
      "lastName": "bravo",
    }
    HTTParty.post("#{BASE_URL}:443/api/v3/subscriberLists?name=#{name}", 
    query{auth: CREDS}, 
    headers: {
        "Content-Type" => "application/json"
        "Accept" => "application/json"
      })

end

def add_person

end
