class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :primary_major
      t.string :interest_1
      t.string :interest_2
      t.string :interest3

      t.timestamps
    end
  end
end
