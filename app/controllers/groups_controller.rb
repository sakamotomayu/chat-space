class GroupsController < ApplicationController

  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to group_messages_url(@group), notice: 'グループを作成しました'
    else
      flash.now[:alert] = 'グループ名を入力してください'
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to group_messages_url(@group), notice: 'グループ編集に成功しました'
    else
      flash.now[:alert] = 'グループは編集されませんでした'
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:group_name, { user_ids: [] })
  end

end
