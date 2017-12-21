class PagesController < ApplicationController
  def index

  end

  def html
  	 @users = User.all	
  @posts = Post.all
  end

  def css
  	 @users = User.all	
  @posts1 = Post1.all
  end

  def javascript
  	 @users = User.all	
  @posts2 = Post2.all
  end
end
