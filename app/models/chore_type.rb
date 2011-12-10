class ChoreType < ActiveRecord::Base
  belongs_to :chore
  validates_presence_of :points, :title, :description

  scope :easy, where('points = 1')
  scope :medium, where('points = 2')
  scope :hard, where('points = 3')

end
