class UsersController < ApplicationController
before_filter :authenticate

  def show	
	@user = User.find(params[:id])
	@us = FbGraph::User.me('05d6c61691c3cc85a21f6c4f9d7311ad')
	@us = FbGraph::User.fetch(@user.uid)
	
	@title= @user.name
	
  end

def index
    @title = "All users"
    @users = User.paginate(:page => params[:page])
end



end