class CreateJoinTableMajorsClasses < ActiveRecord::Migration[5.0]
  def change
    create_join_table :majors, :classes do |t|
      # t.index [:major_id, :class_id]
      # t.index [:class_id, :major_id]
      t.index :major_id
      t.index :class_id
    end
  end
end
