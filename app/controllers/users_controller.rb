class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
  end

  private
    params.require(:user).permit(:email,:name)
  end
end
