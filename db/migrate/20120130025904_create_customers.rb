class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :firtsName
      t.string :secondName
      t.integer :numeroDOI
      t.string :address
      t.date :birthday
      t.integer :phone

      t.timestamps
    end
  end
end
