class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :redirect_to_correct_domain
  def redirect_to_correct_domain
    if request.host =~ /amgcorp\.com$/i
      redirect_to "http://angelmanagementgroup.com"
    end
  end

private

   def authenticate
     logger.warn "Authentication, seeking username: \"#{ENV['ADMIN_USERNAME']}\" and password beginning with \"#{ENV['ADMIN_PASSWORD'][0,4]}\"."
      authenticate_or_request_with_http_basic do |id, password| 
          id == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
      end
   end

end
