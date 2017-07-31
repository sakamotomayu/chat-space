class GroupsController < ApplicationController

  def index
    @group = Group.find(:id)
    @message = Message.find(:id)
  end

  def new
  end

  def create
    @group = Group.new(group_params)
    Group.create(group_name: group_params[:text] , name: group_params[:text])
    if @group.save
      redirect_to group_messages_url(group), notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def edit
    @group = Group.find(:id)
    @chatmember = Group.find(:id)
  end

  private
  def group_params
    params.permit(:text)
  end


end
