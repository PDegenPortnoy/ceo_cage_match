class Match < ActiveRecord::Base
  def self.new_contest
    Ceo.all.limit(2)
  end
end
