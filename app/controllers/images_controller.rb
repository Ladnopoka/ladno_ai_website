class ImagesController < ApplicationController
  def index
  end

  def generate_image
    # For now, we’ll use a placeholder image.
    # In a real scenario, you would call your AI image API here.
    @image_url = "/test_images/1.png"

    respond_to do |format|
      format.html { render :index }
      # If you add JavaScript handling later, you could support format.js.
    end
  end
end