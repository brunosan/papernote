module ApplicationHelper

# Return a title on a per-page basis.
def title
  base_title = "Papernote"
  if @title.nil?
    base_title
  else
    "#{base_title} | #{@title}"
  end
end 


def currentuser
  @currentuser = User.find(session[:user_id]) if session[:user_id]
end


end
  
