class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
	  t.string :username
      t.string :firtsName
      t.string :secondName
      t.string :numeroDOI
      t.string :address
      t.date :birthday
      t.string :phone
      t.timestamps
    end
  end
end
