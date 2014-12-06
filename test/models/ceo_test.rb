require 'test_helper'

describe Ceo do
  it "has a name, salary, company, company_revenue, number_employees" do
    options = {name: "Kristin", salary: 10000000, company: "Microsoft", company_revenue: 100000000, number_employees: 100}
    ceo = Ceo.new(options)
    ceo.save!
    assert ceo.name == options[:name], "CEO name should be 'Kristin'"
    assert ceo.salary == options [:salary], "CEO salary should be 10,000,000"
    assert ceo.company == options[:company], "CEO company should be 'Microsoft'"
    assert ceo.company_revenue == options[:company_revenue], "CEO company revenue should be 100,000,000"
    assert ceo.number_employees == options[:number_employees], "CEO company number of employees should be 100"
  end

  it "raises exception when there is no name" do
    ceo = Ceo.new(salary: 10, company: "thoughtbot", company_revenue: 100, number_employees: 10)
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end

  it "raises exception when there is no company" do
    ceo = Ceo.new(name: "Peter", salary: 10, company_revenue: 100, number_employees: 10)
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end

  it "raises exception when there is no salary" do
    ceo = Ceo.new(name: "Peter", company: "thoughtbot", company_revenue: 100, number_employees: 10)
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end

  it "raises exeception when there is no company revenue" do
    ceo = Ceo.new(name: "Peter", salary: 10, company: "thoughtbot", number_employees: 10)
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end

  it "raises exception when there is no number of employees" do
    ceo = Ceo.new(name: "Peter", salary: 10, company: "thoughtbot", company_revenue: 100)
    assert_raises(ActiveRecord::RecordInvalid){
      ceo.save!
    }
  end
end
