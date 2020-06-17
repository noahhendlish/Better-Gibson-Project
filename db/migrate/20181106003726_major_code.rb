class MajorCode < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :major_code, :string, after:'course_num'
  end
end
