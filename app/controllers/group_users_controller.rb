class GroupUsersController < ApplicationController

  def index
    @group_users = GroupUser.all
  end

  def create
    group = Group.find(params[:group_id])
    user = User.find(params[:user_id])
    group.users << user
    redirect_to group_path(group)
  end

  def destroy
    group_user = GroupUser.find(params[:id])
    group_user.destroy
    redirect_to group_path(group_user.group)
  end
end
