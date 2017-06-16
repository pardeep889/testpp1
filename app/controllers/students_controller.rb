class StudentsController < ApplicationController

    def index
  	@students = Student.all
  end

  def new
  	@student = Student.new
  end
  def create
  	#binding.pry
  	Student.create(first_name: params[:student][:first_name], class_name: params[:student][:class_name] ,age: params[:student][:age])
  	redirect_to "/students"
  end
  def edit
  	@student = Student.find(params[:id])
  end
  def update
  	@student = Student.find(params[:id])
  	@student.update_attributes(first_name: params[:student][:first_name], class_name: params[:student][:class_name] ,age: params[:student][:age])
 	redirect_to "/students"
  end
  def destroy
  	# binding.pry
  	@student = Student.find(params[:id])
  	@student.delete
  	redirect_to "/students"
  end
  def show 
  	@student = Student.find(params[:id])
 
  end

  def save_data
  	#binding.pry
  end
end
