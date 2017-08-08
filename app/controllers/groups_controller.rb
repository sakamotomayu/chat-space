class GroupsController < ApplicationController

  def index
    @groups = current_user.groups
  end

  def new
    @groups = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to group_messages_url(group), notice: 'グループを作成しました'
    else
      flash.now[:alert] = 'グループ名を入力してください'
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.permit(:text)
  end

end
