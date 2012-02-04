class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :route
      t.date :date

      t.timestamps
    end
  end
end
