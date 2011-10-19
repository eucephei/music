# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  before_filter :authorize, :except => :login
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => '8fc080370e56e929a2d5afca5540a0f7'
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
#  def register
#	User.create(params[:user])
#  end
  
protected

  def authorize
    @current_user = User.find_by_id(session[:user_id])
    unless @current_user
      session[:original_uri] = request.request_uri
      flash[:notice] = "Please log in"
      redirect_to :controller => 'admin', :action => 'login'
    end
  end
    
end
