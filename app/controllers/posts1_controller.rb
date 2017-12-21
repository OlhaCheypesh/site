class Posts1Controller < ApplicationController
before_action :authenticate_user!
  before_action :set1_post, only: [:show,:edit,:update,:destroy]
  def new
  @post1 = Post1.new
  end 

  def show
   pp @comment1s = Postcomment1.where(post1_id: @post1.id)
  end

  def create
  	params[:post1][:user_id] = current_user.id
  	@post1 = Post1.new(post1_params)
  	if @post1.save
  		redirect_to pages_css_path
  	else
  		render 'new'
  	end

  end
  
  def destroy
  	@post1.destroy
  	redirect_to pages_css_path
  end

  def edit
  end

  def update
  	@post1.update(post1_params)
  	redirect_to pages_css_path
  end

  private
  	def post1_params
  		params.require(:post1).permit(:user_id,:title,:body)
	
  	end

  	def set1_post
  		@post1 = Post1.find(params[:id])
  	end
end
