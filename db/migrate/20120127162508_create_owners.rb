class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :firtsName
      t.string :secondName
      t.string :sex
      t.integer :typeDOI
      t.integer :numeroDOI
      t.string :email
      t.integer :phone
      t.string :password
      t.datetime :birthday

      t.timestamps
    end
  end
end
