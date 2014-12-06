class HomeController < ApplicationController
  def index
  @students = Student.find(:all)
  @males = Student.where(:gender =>"1").order('score DESC')
  @females = Student.where(:gender =>"2").order('score ASC')
  end
end
