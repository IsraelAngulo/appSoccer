class AddDistrictIdToLocals < ActiveRecord::Migration
  def change
    add_column :locals, :district_id, :integer

  end
end
