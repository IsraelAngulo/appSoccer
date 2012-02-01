class AddTypedocumentIdToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :typedocument_id, :integer

  end
end
