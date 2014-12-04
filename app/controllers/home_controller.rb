class HomeController < ApplicationController
  def index
  @students = Student.find(:all)
  @males = Student.where(:gender =>"1")
  @females = Student.where(:gender =>"2")
  end
end
