class Postcoment2sController < ApplicationController
  before_action :authenticate_user!

  def create
    params[:postcomment2][:post2_id] = params[:posts2_id]
    params[:postcomment2][:user_id] = current_user.id
    @comment2 = Postcomment2.create(postcomment2s_params)
  if @comment2.save
    redirect_to posts2_path(params[:posts2_id])
  else 
    @comment2.errors.full_messages.each do |msg|
     @msg = msg
    end  
    flash[:notice] = "#{@msg}"
    redirect_to posts2_path(params[:posts2_id])
  end
end

def destroy
    @post2 = Post2.find(params[:post2_id])
    @comment2 = @post2.postcomment2s.find(params[:id])
    @comment2.destroy
    redirect_to posts2_path(@post2)
  end

  def vote
    @comment=Postcomment2.find(params[:postcomment2_id])
    @vote=Vote2.where(user_id: current_user.id, postcomment2_id: @comment.id).first
    if @vote != nil
      @vote.destroy
    else
      @vote=Vote2.create(user_id: current_user.id, postcomment2_id: @comment.id)
    end
    redirect_to posts2_path(@comment.post2.id)
  end

private

  def postcomment2s_params
    params.require(:postcomment2).permit(:user_id, :post2_id, :text)
  end

end
