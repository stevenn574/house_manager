class AddPaidToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :paid, :boolean
  end
end
