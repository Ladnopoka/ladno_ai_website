class ImagesController < ApplicationController
  def generate_image
    # Define image directory
    images_path = Rails.root.join("public", "test_images")

    # Get all image files (supports .jpg, .jpeg, .png, .gif)
    image_files = Dir.glob(images_path.join("*.{jpg,jpeg,png,gif}"))

    if image_files.any?
      # Pick a random image
      @image_url = "/test_images/" + File.basename(image_files.sample)
    else
      flash[:alert] = "No images found in the directory."
      @image_url = nil
    end

    # Render the view
    render :index
  end
end
