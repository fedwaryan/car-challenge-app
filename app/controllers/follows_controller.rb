class FollowsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def follow
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    @user.follow(current_user)
    redirect_to root_path
  end

end