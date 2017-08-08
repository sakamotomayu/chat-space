class MessagesController < ApplicationController

  def create
    @message = Group.new(message_params)
    #if @message.save
      #redirect_to group_messages_url(group), notice: 'グループを作成しました'
    #else
      #flash.now[:alert] = 'グループ名を入力してください'
      #render :new
    #end
  end

  #private

  #def message_params
    #params.require(:message).permit(:text , :group_id)
  #end

end
