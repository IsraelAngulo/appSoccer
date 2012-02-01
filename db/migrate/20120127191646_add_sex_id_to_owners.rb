class AddSexIdToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :sex_id, :integer

  end
end
