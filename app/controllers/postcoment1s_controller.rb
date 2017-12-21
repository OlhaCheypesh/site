class Postcoment1sController < ApplicationController
	before_action :authenticate_user!

	def create
		params[:postcomment1][:post1_id] = params[:posts1_id]
		params[:postcomment1][:user_id] = current_user.id
		@comment1 = Postcomment1.create(postcomment1s_params)
  if @comment1.save
    redirect_to posts1_path(params[:posts1_id])
  else 
    @comment1.errors.full_messages.each do |msg|
     @msg = msg
    end  
    flash[:notice] = "#{@msg}"
    redirect_to posts1_path(params[:posts1_id])
  end
end

def destroy
    @posts1 = Posts1.find(params[:posts1_id])
    @comment1 = @post1.postcomment1s.find(params[:id])
    @comment1.destroy
    redirect_to posts1_path(@post1)
  end

private

	def postcomment1s_params
		params.require(:postcomment1).permit(:user_id, :post1_id, :text)
	end

end
