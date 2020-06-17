class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      #added from here to
      t.string :major
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :grad_year
      t.integer :credits_taken
      #here
      #originally here
      t.timestamps
    end

  end
end
