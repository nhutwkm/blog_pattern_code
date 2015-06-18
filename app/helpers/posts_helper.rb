module PostsHelper
def post_params
    params.require(:post).permit(:title, :desc, :code, :user_id)
  end
end
