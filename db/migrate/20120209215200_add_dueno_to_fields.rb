class AddDuenoToFields < ActiveRecord::Migration
  def change
    add_column :fields, :dueno, :string

  end
end
