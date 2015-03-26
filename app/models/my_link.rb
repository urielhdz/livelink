class MyLink < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :user
	validates_presence_of :link
	
	def self.from_another_user user
		where("user_id != ?",user.id)
	end
end
