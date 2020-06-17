class StudentsController < ApplicationController
    #before_action :authenticate_user!
   
    #skip_before_action :verify_authenticity_token
    def index
        @students = Student.all
    end
    
    def new
        @new_student = Student.new
    end
    
  def create 
  	new_student = Student.new(student_params) #Course.new(course_params) 
  	if new_student.save 
  	  flash[:success] = "Student has been added!"
    	redirect_to students_path 
  	else 
  	  flash[:danger] = "Error entering data in db!"
    	render 'new' 
  	end 
  end
  
  def edit
      @student = Student.find(params[:id])
  end
  
  def update
      @student = Student.find(params[:id])
      if @student.update_attributes(student_params)
          flash[:success] = "Student, #{@student.first_name}" "#{@student.last_name}, has been updated!"

          redirect_to students_path, :success => "The student is updated!"
      else
          flash[:danger] = "Student, #{@student.first_name}" "#{@student.last_name}, cannot be updated!"

          render "edit"
      end
  end
  
  def destroy
    @student = Student.find(params[:id])
    flash[:success] = "Student has been deleted!"
    @student.destroy
    redirect_to students_path
  end
  
  private
  def student_params
      params.require(:student).permit(:major, :first_name, :last_name, :email, :student_id, :grad_year, :credits_taken)
  end
end

##FOR LOGIN/AUTHENTICATION/ACCOUNT MGMT:
#https://github.com/plataformatec/devise
