class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
	  t.string :username
      t.string :firtsName
      t.string :secondName
      t.string :sex
      t.integer :typeDOI
      t.string :numeroDOI
      t.string :phone
      t.date :birthday
      t.timestamps
    end
  end
end
