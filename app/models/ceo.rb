class Ceo < ActiveRecord::Base
  validates :name, presence: true
  validates :company, presence: true
  
  def wins
    Match.where(winner: self.id).count
  end
end
