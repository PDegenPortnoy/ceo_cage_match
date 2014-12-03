json.array!(@ceos) do |ceo|
  json.extract! ceo, :id, :name, :salary, :company, :company_revenue, :number_employees
  json.url ceo_url(ceo, format: :json)
end
