class MajorsController < ApplicationController
    def index
        @majors = Major.all()
    end
    
    def new
        @new_major = Major.new
    end

  def create 
  	new_major = Major.new(major_params)
  	if new_major.save 
  	  flash[:success] = "Major is added!"
    	  redirect_to majors_path
  	else 
  	  flash[:danger] = "Error entering data in db!"
    	render 'new' 
  	end 
  	
  end
  
  def edit
      @major = Major.find(params[:id])
  end
  
  def update
      @major = Major.find(params[:id])
      if @major.update_attributes(major_params)
        flash[:success] = "#{@major.major_name} major updated!"
        redirect_to majors_path
      else
        render "edit"
      end
  end
  
  def destroy
    @major = Major.find(params[:id])
    flash[:success] = "#{@major.major_name} major deleted!"
    @major.destroy
    redirect_to majors_path
  end
  
  def show
      @major = Major.find(params[:id])
      a = @major.id
      @courses = Course.where('major_id = ?', a)
  end

  private
  def major_params
    params.require(:major).permit(:major_name, :major_id) 
  end
end
