class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :descriptiveNameLocal
      t.string :address
      t.string :addressinGoogleMaps
      t.string :telephone

      t.timestamps
    end
  end
end
