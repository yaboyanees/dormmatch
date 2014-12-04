class Dorm < ActiveRecord::Base

has_many :rooms
belongs_to :school
	def schoolname
		"#{school.name}"
	end
end
