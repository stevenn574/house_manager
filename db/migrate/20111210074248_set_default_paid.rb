class SetDefaultPaid < ActiveRecord::Migration
  def up
    change_column_default(:expenses, :paid, false)
    Expense.update_all ["paid = ?", false]
  end

  def down
  end
end
