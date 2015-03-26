class MyFavoriteLinksController < ApplicationController
	def create
		@my_favorite_link = current_user.my_favorite_links.new my_favorite_link_params
		respond_to do |format|
			if @my_favorite_link.save
				format.html { redirect_to @my_favorite_link, notice: 'My link was successfully created.' }
		    format.json { render :show, status: :created, location: @my_link }
			else
				format.html { render :new }
        format.json { render json: @my_favorite_link.errors, status: :unprocessable_entity }
			end
		end
	end

	def my_favorite_link_params
		params.require(:my_favorite_link).permit(:my_link_id)
	end
end