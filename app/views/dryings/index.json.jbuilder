json.array!(@dryings) do |drying|
  json.extract! drying, :id, :method, :flavour_profile_id
  json.url drying_url(drying, format: :json)
end
