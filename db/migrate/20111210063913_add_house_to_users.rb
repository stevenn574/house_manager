class AddHouseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :house_id, :integer
  end
end
