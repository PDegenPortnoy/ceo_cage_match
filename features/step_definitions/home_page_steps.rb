Given /there are two CEOs in the system/ do 
  # Using Fixtures.  See features/support/env.rg
  #2.times do |i|
  #  Ceo.create(name: "CEO Name #{i}", company: "Company #{i}")
  #end
end

When /I am on the home page/ do
  visit root_path
end

Then /I should see two CEOs/ do
  @ceos = Ceo.all
  assert @ceos.size, 2
  assert page.has_content? @ceos.first.name
  assert page.has_content? @ceos.first.company
  assert page.has_content? @ceos.last.name
  assert page.has_content? @ceos.last.company
end
