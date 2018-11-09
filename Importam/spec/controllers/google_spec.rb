require 'rails_helper'
require 'Httparty'

RSpec.describe GoogleController, :type => :controller do
    it "renders the help template" do
        get :help
        expect(response).to render_template("help")
    end

end