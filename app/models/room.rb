class Room < ActiveRecord::Base

has_many :students
belongs_to :dorm

end
