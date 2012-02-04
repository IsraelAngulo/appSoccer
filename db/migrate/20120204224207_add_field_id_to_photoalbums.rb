class AddFieldIdToPhotoalbums < ActiveRecord::Migration
  def change
    add_column :photoalbums, :field_id, :integer

  end
end
