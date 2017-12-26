class Posts2Controller < ApplicationController
before_action :authenticate_user!
  before_action :set2_post, only: [:show,:edit,:update,:destroy]
  def new
  @post2 = Post2.new
  end 

  def show
    @comments = Postcomment2.where(post2_id: @post2.id)
        @votes={}
    @comments.each do |comment|
      @votes[comment.id]=Vote2.where(postcomment2_id: comment.id).count
    end
  end

  def create
  	params[:post2][:user_id] = current_user.id
  	@post2 = Post2.new(post2_params)
  	if @post2.save
  		redirect_to pages_javascript_path
  	else
  		render 'new'
  	end

  end
  
  def destroy
  	@post2.destroy
  	redirect_to pages_javascript_path
  end

  def edit
  end

  def update
  	@post2.update(post2_params)
  	redirect_to pages_javascript_path
  end

  private
  	def post2_params
  		params.require(:post2).permit(:user_id,:title,:body)
	
  	end

  	def set2_post
  		@post2 = Post2.find(params[:id])
  	end
end