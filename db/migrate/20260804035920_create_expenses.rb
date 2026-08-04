class CreateExpenses < ActiveRecord::Migration[8.1]
  def change
    create_table :expenses do |t|
      t.string :title
      t.decimal :amount
      t.date :expense_date
      t.text :note

      t.timestamps
    end
  end
end
