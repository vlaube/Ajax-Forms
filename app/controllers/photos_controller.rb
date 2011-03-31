class PhotosController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @photo = @post.photos.build(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to(@post) }
      else
        format.html { redirect_to(@post) } #TODO - Deveria retornar a mensagem e não um redirect
      end
    end
  end

end
