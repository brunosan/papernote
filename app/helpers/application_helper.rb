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
  
  
private
  
  def current_user
    @current_user ||= User.find(params[:user_id]) if params[:user_id]
  end
end