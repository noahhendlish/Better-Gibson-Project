class AddCoursenumToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :course_num, :integer
  end
end
