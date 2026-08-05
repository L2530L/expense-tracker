class AddTotalToExpenses < ActiveRecord::Migration[8.1]
  def change
    add_column :expenses, :total, :decimal
  end
end
