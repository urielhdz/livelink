class WelcomeController < ApplicationController
  def index
  	@my_link = MyLink.new
  	@my_links = MyLink.from_another_user current_user
  	@my_favorite_links = MyFavoriteLink.my_links current_user
  end
  def unregistered
  end
end
