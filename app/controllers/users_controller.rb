class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
  end

  private
    def update_params
      params.require(:user).permit(:email,:name)
    end
end
