class RemoveCourseNumFromCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :course_num, :string
  end
end
