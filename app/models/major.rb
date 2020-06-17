class Major < ApplicationRecord
    has_many :courses
    belongs_to :student
    belongs_to :user
    
    def self.search(search)
        if search 
            major = Major.find_by(major_name: search)
            if major 
                self.where(major_name: major)
            else
                Major.all
            end
        else
            Major.all
        end
    end

end
