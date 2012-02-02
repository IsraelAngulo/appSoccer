class AddSexIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :sex_id, :integer

  end
end
