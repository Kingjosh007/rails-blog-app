class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create(user_id: current_user.id, post_id: @post.id)

    respond_to do |format|
      format.html do
        if @like.save
          redirect_to user_post_path(@post.user.id, @post.id), notice: 'Liked 👍'
        else
          redirect_to user_post_path(@post.user.id, @post.id), alert: 'An error occured, please try again!'
        end
      end
    end
  end
end
