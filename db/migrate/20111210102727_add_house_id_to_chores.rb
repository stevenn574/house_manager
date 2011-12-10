class AddHouseIdToChores < ActiveRecord::Migration
  def change
    add_column :chores, :house_id, :integer
  end
end
