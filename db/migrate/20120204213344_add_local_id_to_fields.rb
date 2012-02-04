class AddLocalIdToFields < ActiveRecord::Migration
  def change
    add_column :fields, :local_id, :integer

  end
end
