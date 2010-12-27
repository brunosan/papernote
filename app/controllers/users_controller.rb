class UsersController < ApplicationController

  def show	
	@user = User.find(params[:id])
	@us = FbGraph::User.me('05d6c61691c3cc85a21f6c4f9d7311ad')
	@us = FbGraph::User.fetch(@user.uid)
	
	@title= @user.name
	
  end

 def new
  #create user
 end

end