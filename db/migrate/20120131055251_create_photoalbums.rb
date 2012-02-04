class CreatePhotoalbums < ActiveRecord::Migration
  def change
    create_table :photoalbums do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
