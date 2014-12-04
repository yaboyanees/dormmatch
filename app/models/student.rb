class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

belongs_to :school
belongs_to :room

	def schoolname
		"#{school.name}"
	end
	def g
		if gender == 1
			"male"
		else
			"female"
		end
	end
# 	def student_type
# 		if (music == 1 or music == 2 or music == 3 or music == 4 or music == 5) && (saturday == 1 or saturday == 3) && (hobby == 1 or hobby == 4)  && (sleep == 2 or sleep == 3) && (major == 1 or major == 2 or major == 3 or major == 4 or major == 5)
# 			"party"
# 		elsif music == 2 && saturday == 2 && hobby == 2 && sleep == 2 && major == 2
# 			"homebody"
# 		elseif music == 2 && (saturday == 4 or saturday == 5) && hobby == 2 && sleep == 2 && major == 2
# 			"loser" 
# 		end
# 	end


	def score_calc
		if self.saturday.blank?
			score = 0
		else
			score = self.saturday + self.hobby + self.major + self.sleep + self.music	
		end
		return score
	end
end
