class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :user


  validates :title, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :expense_date, presence: true
end
