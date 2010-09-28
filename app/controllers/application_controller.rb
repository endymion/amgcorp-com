class ApplicationController < ActionController::Base
  protect_from_forgery

private

   def authenticate
     logger.warn "Authentication, seeking username: \"#{ENV['ADMIN_USERNAME']}\" and password beginning with \"#{ENV['ADMIN_PASSWORD'][0,4]}\"."
      authenticate_or_request_with_http_basic do |id, password| 
          id == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
      end
   end

end
