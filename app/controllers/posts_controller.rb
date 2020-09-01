class PostsController < ApplicationController
  def create
    @posts = Post.create(post_params)
    redirect_to comic_path(params[:comic_id])
  end

  private

  def post_params
    params.require(:post).permit(:text).merge(user_id: current_user.id, comic_id: params[:comic_id])
  end

end
