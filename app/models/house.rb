class House < ActiveRecord::Base
  has_many :users
  has_many :expenses
  has_many :chores

  validates_presence_of :name

  def total_points
    chores.total_points(self)
  end
end
