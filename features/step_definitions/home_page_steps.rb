Given /^there are two CEOs in the system$/ do 
  # Using Fixtures.  See features/support/env.rg
  assert Ceo.all.size, 2
end

When /^I am on the home page$/ do
  visit root_path
end

Then /^I should see two CEOs$/ do
  ceos = Ceo.all
  assert ceos.size, 2
  assert page.has_content? ceos.first.name
  assert page.has_content? ceos.first.company
  assert page.has_content? ceos.last.name
  assert page.has_content? ceos.last.company
end

When /^I click "(.*)" for the first CEOs$/ do |vote|
  first('button').click
end

Then /^That CEO should win$/ do
  ceo = Ceo.first
  assert page.has_content? "CEO #{ceo.name} appreciates your vote of confidence!"  
end

