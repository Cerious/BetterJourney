class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def google
    render html: "Button & Function Construction in Progress."
  end
end
