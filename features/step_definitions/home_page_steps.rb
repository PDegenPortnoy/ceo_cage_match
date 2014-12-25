Given /there are two CEOs in the system/ do 
  # Using Fixtures.  See features/support/env.rg
  assert Ceo.all.size, 2
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

When /I click "(.*)" for the first CEOs/ do |vote|
  first('button').click
end

Then(/^That CEO should "(.*?)" the contest$/) do |event|
  pending 
end

Then(/^get a "(.*?)" vote$/) do |score|
  pending
end
