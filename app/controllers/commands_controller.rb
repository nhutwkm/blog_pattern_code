class CommandsController < ApplicationController
	 def create
    @post = Post.find(params[:post_id])
    @comment = @post.commands.create(user_id: current_user.id, comment: comment_params[:comment])
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:post_id])
  	@comment = Command.find(params[:id])
  	@comment.destroy
  	redirect_to @post
end

 
  private
    def comment_params
      params.require(:command).permit(:user_id, :comment)
    end
end

