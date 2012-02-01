class CreateTypedocuments < ActiveRecord::Migration
  def change
    create_table :typedocuments do |t|
      t.string :name

      t.timestamps
    end
  end
end
