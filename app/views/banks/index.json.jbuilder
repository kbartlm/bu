json.array!(@banks) do |bank|
  json.extract! bank, :id, :bankName, :bankNumber, :user_id
  json.url bank_url(bank, format: :json)
end
