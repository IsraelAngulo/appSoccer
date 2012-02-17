class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :firstName
      t.string :lastName
	  t.string :dni
      t.references :sex
      t.string :phone
      t.date :birthday
	  t.string :email
	  t.string :email_confirmation
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
	  t.references :typeuser
      t.timestamps
    end
	add_index :users, :typeuser_id
  end
end
