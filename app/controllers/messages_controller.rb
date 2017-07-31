class MessagesController < ApplicationController

  def create
    @message = Message.create(text: params[:text] , user_id: current_user , group_id: params[:group_id])
  end

  private
  def message_params
    params.permit(:text , :group_id)
  end

end
