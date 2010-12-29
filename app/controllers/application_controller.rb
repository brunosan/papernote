class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :currentuser
  before_filter :currentuser
  
private

def currentuser
  @currentuser = User.find(session[:user_id]) if session[:user_id]
end


end
