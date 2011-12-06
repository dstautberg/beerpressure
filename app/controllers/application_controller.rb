class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_for_current_user

  def check_for_current_user
    @user = session[:current_user]
  end
end
