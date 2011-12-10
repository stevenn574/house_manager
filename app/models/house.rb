class House < ActiveRecord::Base
  has_many :users
  has_many :expenses

  validates_presence_of :name
end
