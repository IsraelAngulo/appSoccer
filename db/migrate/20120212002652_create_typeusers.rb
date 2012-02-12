class CreateTypeusers < ActiveRecord::Migration
  def change
    create_table :typeusers do |t|
      t.string :nameDescription

      t.timestamps
    end
  end
end
