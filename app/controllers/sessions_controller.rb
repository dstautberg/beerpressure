class SessionsController < ApplicationController
  
  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:current_user] = @user
    redirect_to '/'
  end

  def destroy
    session[:current_user] = nil
    redirect_to '/'
  end

  def failure
    Rails.logger.debug "Authentication failed: #{params.inspect}"
    flash[:notice] = "Authentication failed."
    redirect_to '/'
  end
    
end
