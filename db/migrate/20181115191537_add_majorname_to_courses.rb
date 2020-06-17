class AddMajornameToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :major_name, :string
  end
end
