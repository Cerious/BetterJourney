describe GoogleController do
    before do
        response = HTTParty.post('https://accounts.google.com/o/oauth2/token',  body: { client_id: ENV["GOOGLEID"], client_secret: ENV["GOOGLESECRET"], code: params['code'], grant_type: 'authorization_code', redirect_uri: 'http://localhost:3000/google/oauth2callback', scope: params['scope'] }, headers: { 'Accept' => 'application/json' } )
        access_token = response["access_token"]
    
    describe "Token response" do
        it "is not empty" do
            expect(access_token).to != None
    end

end