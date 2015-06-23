class PostsController < ApplicationController
    def index
        # binding.pry
      if params[:format].nil?&&params[:q].blank?
        @posts= Post.all
      elsif params[:q].blank?
        @posts = Post.Category_post_find(params[:format])
      else
        @posts = Post.where("title LIKE '%#{params[:q]}%'")
      end 
      @posts=@posts.paginate(:page => params[:page], :per_page  => 5)
        # @posts = Post.post_list(params[:page])
      @users = User.all
    end
    
    def new
      @users = User.all
      @post = Post.new
      @all_category = Category.all
      @category_post = @post.categories_posts.build
    end

    def create
      @post = Post.do_new(user_id: current_user.id,title: post_params[:title],desc: post_params[:desc],code: post_params[:code])
      if @post.save
        params[:object][:id].each do |fa|
          unless fa.blank? or fa.nil?
            CategoriesPost.create(category_id: fa, post_id: @post.id)
          end
        end
        redirect_to @post
      else
        render 'new'
      end 
    end

    def update
      @post = Post.find(params[:id])
      CategoriesPost.where(post_id: @post.id).destroy_all
      
      if @post.update(post_params)
        params[:object][:id].each do |fa|
          unless fa.blank? or fa.nil?
            CategoriesPost.create(category_id: fa, post_id: @post.id)
          end
        end
        redirect_to posts_path
      else 
        render 'edit'
      end
    end

    def edit 
      @users = User.all
      @post = Post.find(params[:id])
      @all_category = Category.all
      @category_post = @post.categories_posts.build
    end
    
    def show  
      @post = Post.find(params[:id])
      @list_categories = list_categories(params[:id])
    end

    def destroy
      @post = Post.delete(params[:id])
      @post.destroy
      redirect_to posts_path
    end

    private
    def post_params
      params.require(:post).permit(:title, :desc, :code, :user_id)
    end

    def list_categories(id)
      CategoriesPost.where(post_id: id)
    end
end