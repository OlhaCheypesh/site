class PagesController < ApplicationController
  def index

  end

  def html
  @posts = Post.where(category_id: 1)
  end

  def css
  @posts = Post.where(category_id: 2)
  end

  def javascript
  @posts = Post.where(category_id: 3)
  end
end
