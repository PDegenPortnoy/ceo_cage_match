require 'test_helper'

describe Match do
  describe "validations" do
    it "should not save without two contestant and a winner" do 
      match = Match.new
      assert_not match.save, "Match saved without two contestants"
    end

    it "should save with two contestants and a winner" do
      match = Match.new(one: ceos(:one).id, two: ceos(:two).id, winner: ceos(:one).id)
      assert match.save
    end
  end

  it "returns two CEO's for a new contest" do
    Match.new_contest.size == 2
  end

  it "awards a win to the winning CEO" do
    assert_difference('ceos(:one).wins') do
      Match.create(one: ceos(:one).id, two: ceos(:two).id, winner: ceos(:one).id)
    end
  end
end
