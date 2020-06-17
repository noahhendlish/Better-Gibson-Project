class CreateJoinTableStudentsMajors < ActiveRecord::Migration[5.0]
  def change
    create_join_table :students, :majors do |t|
      # t.index [:student_id, :major_id]
      # t.index [:major_id, :student_id]
      t.index :student_id
      t.index :major_id
    end
  end
end
