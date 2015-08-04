class PhotosController < ApplicationController
before_action :find_photo, only: [:show, :edit, :update, :destroy]
	def index
	end 

	def show 
		
	end 
#creating new photoblogs
def new 
	@photo = Photo.new 
end 

def create 
	@photo = Photo.new(photo_params)
	# when you save the photo blog the right way 
	if @photo.save 
		redirect_to @photo, notice: "You did it!"
	else 
		render 'new'
	end 
end 

  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it. this is the reason to use private 

private 

def photo_params 
	params.require(:photo).permit(:title, :content)
end 

def find_photo
	@photo = Photo.find(params[:id])
end









end
