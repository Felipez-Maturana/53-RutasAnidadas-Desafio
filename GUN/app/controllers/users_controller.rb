class UsersController < ApplicationController
  before_action :set_group 

  def index
    @users = @group.users
  end

  def new
    @user = @group.users.build
  end

  def create
    @user = @group.users.build(user_params)
    @user.save
    redirect_to group_users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to group_users_url(@group)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
  end

  private
  def set_group
    @group = Group.find(params[:group_id])
  end

  def user_params
    params.require(:user).permit(:name, :group_id)
  end
end