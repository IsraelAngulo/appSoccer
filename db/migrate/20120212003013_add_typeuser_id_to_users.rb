class AddTypeuserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :typeuser_id, :integer

  end
end
