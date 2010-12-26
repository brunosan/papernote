class SessionsController < ApplicationController

def create
  auth= request.env["omniauth.auth"]
  user = User.find_by_provider_and_uid(auth["provider"],auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_uid] = user.id
  redirect_to root_url, :notice => "sign in!"
end


def destroy
  params[:user_id] = nil
  redirect_to root_url, :notice => "sign out!"
end 
 
end