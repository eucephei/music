
class AdminController < ApplicationController

  # just display the form and wait for user to
  # enter a name and password
  
  def login
    session[:user_id] = nil
    if request.post?
      @current_user = User.authenticate(params[:name], params[:password])
      if @current_user
			session[:user_id] = @current_user.id
        	uri = session[:original_uri]
			session[:original_uri] = nil
			redirect_to(uri || { :action => "index" })
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end
  
  def logout
    @current_user = session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end
  
  def index
	@total_albums = Album.count
  end
  
protected
  # overrides the authroize in admin_controller.rb
  def authorize
  end  
  
end
