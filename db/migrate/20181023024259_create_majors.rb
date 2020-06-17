class CreateMajors < ActiveRecord::Migration[5.0]
  def change
    create_table :majors do |t|
      t.string :major_name
      t.string :major_id
      t.timestamps
      t.references :students
      t.belongs_to :user
    end
  end
end
