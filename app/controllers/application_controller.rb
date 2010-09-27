class ApplicationController < ActionController::Base
  protect_from_forgery

private

   def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
          id == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
      end
   end

end
