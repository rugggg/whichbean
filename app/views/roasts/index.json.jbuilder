json.array!(@roasts) do |roast|
  json.extract! roast, :id, :name, :strength, :flavour_profile_id
  json.url roast_url(roast, format: :json)
end
