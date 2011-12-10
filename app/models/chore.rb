class Chore < ActiveRecord::Base
  belongs_to :house
  belongs_to :user
  belongs_to :chore_type

  def self.points
    chore_type.points
  end

end
