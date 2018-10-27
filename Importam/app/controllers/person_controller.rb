class PersonController < ApplicationController
  def new
    @person = Person.new
  end
end
