class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
	  t.string :username
      t.string :firtsName
      t.string :secondName
      t.string :sex
      t.integer :typeDOI
      t.integer :numeroDOI
      t.integer :phone
      t.date :birthday
      t.timestamps
    end
  end
end
