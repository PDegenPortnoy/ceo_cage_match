class Ceo < ActiveRecord::Base
  validates :name, presence: true
  validates :company, presence: true
  validates :salary, presence: true
  validates :company_revenue, presence: true
  validates :number_employees, presence: true
end
