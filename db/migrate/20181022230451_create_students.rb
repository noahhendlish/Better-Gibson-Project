class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :major
      t.string :first_name
      t.string :last_name
      t.string :email
      #t.string :student_id
      t.string :grad_year
      t.string :credits_taken
      t.timestamps
    end
  end
end
