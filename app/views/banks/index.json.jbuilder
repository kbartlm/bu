json.array!(@banks) do |bank|
  json.extract! bank, :id, :bankName, :bankNumber
  json.url bank_url(bank, format: :json)
end
