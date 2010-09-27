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

end
