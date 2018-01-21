class StudentsController < ApplicationController

  def index
    @message = "This is dynamic variable, from controller"
    # must get list of students from db
    @students = Student.all    
  end 

  def create
  end 

  def new
  end 

end
