module UsersHelper

  def facebook_profile_for(user)
    logo = image_tag(user.picture, 
	  :width => "80px", :alt => "Profile pic", :class=> "round")
    link_to logo, root_path
  end



def authenticate
      deny_acess if session[:user_id].nil?
end

def deny_acess
  redirect_to(root_path, :notice => "Please sign in for access to #{session[:return_to]}.")
end


end