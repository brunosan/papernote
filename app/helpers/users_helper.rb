module UsersHelper

  def facebook_profile_for(user)
    logo = image_tag(user.picture, 
	  :width => "80px", :alt => "Profile pic", :class=> "round")
    link_to logo, root_path
  end
end