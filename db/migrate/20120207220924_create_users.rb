class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :documentnumber
      t.string :email
      t.string :emailconfirmation
      t.date :datebirth
      t.string :phone
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.timestamps
    end
  end
end
