class CommentsController < ApplicationController
  before_action :set_comment, only: [:update]


 def create
  Comment.create(comment_params)
  redirect_to :root

 end

 def update

  @comment.update(comment_params)
 end

private
def set_comment
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:body, :prototype_id, :user_id)
  end

end

