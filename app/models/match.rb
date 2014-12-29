class Match < ActiveRecord::Base
  validates :one, presence: true 
  validates :two, presence: true
  validates :winner, presence: true

  def self.new_contest
    Ceo.all.limit(2)
  end
end
