class CoursesController < ApplicationController
  def index
    @courses = Course.all()
  end
    
  def new
    @new_course = Course.new
  end
    
  def create 
  	new_course = Course.new(course_params) #Course.new(course_params) 
  	if new_course.save 
  	  flash[:success] = "Course is added!"
    	redirect_to courses_path
  	else 
  	  flash[:danger] = "Error entering data in db!"
    	render 'new' 
  	end
  	
  end
  
  def edit
      @course = Course.find(params[:id])
  end
  
  def update
      @course = Course.find(params[:id])
      if @course.update_attributes(course_params)
        flash[:success] = "#{@course.name} course updated!"
        redirect_to courses_path
      else
        flash[:danger] = "#{@course.name} cannot be updated!"
        render "edit"
      end
  end
  
  def destroy
    @course = Course.find(params[:id])
    flash[:success] = "#{@course.name} course deleted!"
    @course.destroy
    redirect_to courses_path
  end
  
  
  
  private
  def course_params
      params.require(:course).permit(:course_num, :major_id, :major_code, :course_code, :section, :name, :location, :instructor, :days, :start_time, :end_time, :credits)
  end
end
