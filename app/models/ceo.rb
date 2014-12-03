class Ceo < ActiveRecord::Base
  validates :name, presence: true
  validates :company, presence: true
end
