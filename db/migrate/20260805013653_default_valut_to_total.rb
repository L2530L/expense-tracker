class DefaultValutToTotal < ActiveRecord::Migration[8.1]
  def change
    change_column_default :expenses, :total, from: nil, to: 0
  end
end
