class CreateHires < ActiveRecord::Migration
  def change
    create_table :hires do |t|
      t.integer :field_id
      t.date :dayCare
      t.time :hoursCare

      t.timestamps
    end
  end
end
