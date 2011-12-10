class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :current_user

  def current_user
    @user = session[:current_user]
  end
end
