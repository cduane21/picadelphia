class PhotosController < ApplicationController
	def index
	end 
#creating new photoblogs
def new 
	@photo = Photo.new 
end 

def create 
	@photo = Photo.new(photo_params)
end 

  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it. this is the reason to use private 

private 

def photo_params 
	params.require(:photo).permit(:title, :content)
end 










end
