class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :house_id
      t.integer :user_id
      t.decimal :amount
      t.text :description

      t.timestamps
    end
  end
end
