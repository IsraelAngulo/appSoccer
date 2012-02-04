class AddTypedocumentIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :typedocument_id, :integer

  end
end
