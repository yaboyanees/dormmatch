class SturollupController < ApplicationController
  def index
  @students = Student.find(:all)
  end
end
