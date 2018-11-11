##In this we will be using the mad mimi sub api to first create a person and then
##add said person to the subscriber list.
##use httparty and find out the structure for sending a request with it

class SubberTool
    ##Along with any request, you'll need to pass two parameters. The first is your 
    ##Username (the email you use to sign in), which identifies the account you're 
    ##currently using, and the second is a valid API key.
    BASE_URL = 'https://madmimi.com:443'
    CREDS = 'curl -v -H "Accept: application/json" -X GET --data "api_key=nr;Uq6qKY8AhjTm&username=justin@mybetterjourney.com https://api.madmimi.com/promotions'
    def add_sub

        }
        person = {
            "email": "carl2cool@gmail.com",
            "firstName": "carl",
            "lastName": "bravo"
        }
        HTTParty.post("#{BASE_URL}/api/v3/subscribers", 
        body: person, 
        headers: {
            "Content-Type": "application/json"
            "Accept": "application/json"
        })

    end

    def add_person

end
