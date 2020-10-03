class ToCommentsController < ApplicationController
  def create
    tocomment = ToComment.create(comment_params)
    redirect_to "/toilets/#{tocomment.toilet.id}"
  end

  private

  def comment_params
    params.require(:to_comment).permit(:text).merge(user_id: current_user.id, toilet_id: params[:toilet_id])
  end

end
