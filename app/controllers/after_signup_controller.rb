class AfterSignupController < ApplicationController
	before_filter :authenticate_student!
	include Wicked::Wizard

steps :add_onestep, :add_twostep

	def show
		@student = current_student
			case step
			when :add_twostep
			end
		render_wizard
	end
	
	def update
		@student = current_student
		@student.update_attributes(student_params)
		render_wizard @student
	end
	
end