class MessagesController < ApplicationController
  before_action :authenticate_user!, only: :create

  def index
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
    @message = Message.new
    @users = @group.users
    @messages = @group.messages.includes(:user)
  end

  def create
    @group = Group.find(params[:group_id])
    @message = current_user.messages.new(create_params)
    if @message.save
      redirect_to group_messages_url(params[:group_id]), notice: 'メッセージを入力しました'
    #else
      #flash.now[:alert] = 'メッセ―ジを入力してください'
      #redirect_to group_messages_url(params[:group_id])
    end
  end

  private

  def create_params
    params.require(:message).permit(:text, :image).merge(group_id: params[:group_id])
  end

end
