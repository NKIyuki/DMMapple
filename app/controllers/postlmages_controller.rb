class PostlmagesController < ApplicationController
  def new
    @post_images =　Post.new
  end

    def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = Post.all
  end

  def show
    @post_image = Post.find(params[:id])
  end

  def destroy
    @post_image = destroy Postlmage all
    @post_image.destroy
    redirect_to post_images
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
