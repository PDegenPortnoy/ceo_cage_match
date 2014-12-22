Given /there are two CEOs displayed/ do 
  2.times do |i|
    Ceo.create(name: "CEO Name #{i}", company: "Company #{i}")
  end
end

When /I am on the home page/ do
  visit root_path
end

Then /I should see two CEOs/ do
  @ceos = Ceo.all
  assert @ceos.size, 2
  assert page.has_content? @ceos.first.name
end
