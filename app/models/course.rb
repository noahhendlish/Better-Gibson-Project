class Course < ActiveRecord::Base

    belongs_to :major
    #belongs_to :user
    
    def search  
    end

end
