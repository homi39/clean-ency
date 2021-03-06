class BaCommentsController < ApplicationController
  def create
    bacomment = BaComment.create(comment_params)
    redirect_to "/baths/#{bacomment.bath.id}"
  end

  private

  def comment_params
    params.require(:ba_comment).permit(:text).merge(user_id: current_user.id, bath_id: params[:bath_id])
  end

end
