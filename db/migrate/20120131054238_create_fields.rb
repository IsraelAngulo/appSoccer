class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.date :day
      t.time :starname
      t.time :endtime
      t.float :dayprice
      t.float :nightprice

      t.timestamps
    end
  end
end
