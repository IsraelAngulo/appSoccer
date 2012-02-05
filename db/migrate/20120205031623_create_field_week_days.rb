class CreateFieldWeekDays < ActiveRecord::Migration
  def change
    create_table :field_week_days do |t|
      t.integer :field_id
      t.integer :weekDay_id

      t.timestamps
    end
  end
end
