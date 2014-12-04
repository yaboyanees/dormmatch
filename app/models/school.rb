class School < ActiveRecord::Base

has_many :dorms
has_many :students

	def schoolname
		"#{name}"
	end

end
