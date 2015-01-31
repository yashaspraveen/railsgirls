json.array!(@cabs) do |cab|
  json.extract! cab, :id, :cab_type, :cab_no, :rate, :insured
  json.url cab_url(cab, format: :json)
end
