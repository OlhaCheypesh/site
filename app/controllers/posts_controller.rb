class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show,:edit,:update,:destroy]
  def new
  @post = Post.new
  end 

  def show
    @comments = Postcomment.where(post_id: @post.id)
    @votes={}
    @comments.each do |comment|
      @votes[comment.id]=Vote.where(postcomment_id: comment.id).count
    end
  end

  def create
    pp params[:post][:category_id]=params[:category_id]
    pp params[:post][:user_id]=current_user.id
  	pp @post = Post.create(post_params)
  	if @post.save
  		redirect_to pages_html_path
  	else
  		render 'new'
  	end

  end
  
  def destroy
  	@post.destroy
  	redirect_to root_path
  end

  def edit
  end

  def update
  	@post.update(post_params)
  	redirect_to root_path
  end

  private
  	def post_params
  		params.require(:post).permit(:user_id,:title,:body,:category_id)
	
  	end

  	def set_post
  		@post = Post.find(params[:id])
  	end
end
