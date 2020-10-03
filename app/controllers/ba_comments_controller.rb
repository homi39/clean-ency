class BaCommentsController < ApplicationController
  def create
    bacomment = BaComment.create(comment_params)
    redirect_to "/baths/#{bacomment.bath.id}"
  end

  private

  def comment_params
    params.require(:ba_comment).permit(:text).merge(user_id: current_user.id, toilet_id: params[:toilet_id])
  end

end
