class Search < ApplicationRecord
    def courses
      @courses ||= find_courses
    end
    
    private
    
    def find_courses
      courses = Course.order(:name)
      courses = courses.where("major_id = ? OR major_id = ? OR major_id = ? OR major_id = ?", primary_major, interest_1, interest_2, interest3) if primary_major.present?
      courses
    end
end
