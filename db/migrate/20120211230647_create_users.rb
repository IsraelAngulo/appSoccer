class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :email
	  t.string :email_confirmation
	  t.references :typeuser
      t.timestamps
    end
	add_index :users, :typeuser_id
  end
end
