require 'test_helper'

describe Ceo do
  it "has a name and a company" do
    options = {name: "Kirstin", company: "Microsoft"}
    ceo = Ceo.new(options)
    ceo.save!
    assert ceo.name == options[:name], "CEO name should be 'Kirstin'"
    assert ceo.company == options[:company], "CEO company should be 'Microsoft'"
  end

  it "raises exception when there is no name" do
    ceo = Ceo.new(company: "thoughtbot")
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end

  it "raises exception when there is no company" do
    ceo = Ceo.new(name: "Peter")
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end

  it "returns the number of wins" do
    ceo_1 = ceos(:one)
    assert 0, ceo_1.wins
  end

end
