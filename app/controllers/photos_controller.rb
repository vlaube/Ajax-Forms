class PhotosController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @photo = @post.photos.build(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to(@post) }
      end
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to(@post) }
    end
  end

end
