Rails.application.routes.draw do
  root "images#index"
  post 'generate_image', to: 'images#generate_image'
end

#This sets the root URL to the index action and defines a POST route for image generation.
