# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      #if already defined in create_users (just need to change)
      t.change :email, :string,     :null => false, :default => ""
      #t.string :email,          null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
     
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      #added from here to:
      #if already defined in create_users (just need to change)
      #t.change :major, :string,          :null => false, :default => ""
      #t.change :first_name, :string,     :null => false, :default => ""
      #t.change :last_name, :string,     :null => false, :default => ""
      #t.change :credits_taken, :integer,     :null => false, :default => 0
      #t.change :grad_year, :integer,     :null => false, :default => 0
      #t.string :major
      #t.string :first_name
      #t.string :last_name
      #t.integer :credits_taken
      #t.integer :grad_year
      #here
      
      ## Trackable
      #t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # Token authenticatable
      # t.string :authentication_token

      ## Invitable
      #t.string :invitation_token
      
      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
      
      #t.change :email, :string,     :null => false, :default => ""
      #change_column :users, :email, :string, :null => true
      #remove_index :users, :email
    
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
