class RootController < ApplicationController

  before_filter :authenticate, :only => [ :admin ]

  def admin
    session[:admin] = true
    redirect_to root_path
  end
  
  def sign_out
    session[:admin] = false
    redirect_to root_path    
  end

  def tickets
    redirect_to 'http://ticketdriver.com/amg/buy/tickets'
  end
  
  
  before_filter :authenticate, :only => :wetrepublic
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "wet" && password == "republic"
    end
  end
  
  def wetrepublic
  end

end
