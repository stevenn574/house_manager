class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :house
  has_many :payments

  validates_presence_of :amount, :description
  validates_numericality_of :amount

  scope :paid, where(:paid => true)
  scope :outstanding, where(:paid => false)
end
