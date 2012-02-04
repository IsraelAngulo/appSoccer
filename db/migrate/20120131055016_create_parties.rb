class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :award
      t.integer :limitvolumeteam
      t.date :limitdateregistration

      t.timestamps
    end
  end
end
