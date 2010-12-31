class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :currentuser
  
private

def currentuser
  @currentuser = User.find(session[:user_id]) if session[:user_id]
end



def authenticate
      deny_acess if session[:user_id].nil?
end

def deny_acess
  redirect_to(root_path, :notice => "Please sign in for access.")
end


helper_method :currentuser

end
