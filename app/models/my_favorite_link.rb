class MyFavoriteLink < ActiveRecord::Base
  belongs_to :my_link
  belongs_to :user
  def self.my_links user
  	where(user: user)
  end
end
