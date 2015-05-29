class PhotosController < ApplicationController
  def new
  end
  def uploadFile
    post = Photo.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end