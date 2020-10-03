class KiCommentsController < ApplicationController

  def create
    kicomment = KiComment.create(comment_params)
    redirect_to "/kitchens/#{kicomment.kitchen.id}"
  end

  private

  def comment_params
    params.require(:ki_comment).permit(:text).merge(user_id: current_user.id, kitchen_id: params[:kitchen_id])
  end

end
