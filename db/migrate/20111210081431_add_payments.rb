class AddPayments < ActiveRecord::Migration
  def up
    create_table :payments do |t|
      t.integer :user_id
      t.integer :expense_id
      t.decimal :amount
      t.text :comment
    end
  end

  def down
    remove_table :payments
  end
end
